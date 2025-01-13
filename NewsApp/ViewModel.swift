
import Foundation


@MainActor
final class ViewModel: ObservableObject{
    
    //MARK: - Properties
    @Published var topNews: [Article] = []
    
    init(){
        fectchNews()
    }
    
    //MARK: - Methods
    func fectchNews() {
        Task {
            do{
                let articles = try await NetworkManager.shared.getNews()
                topNews = articles.articles
            }catch{
                if let error = error as? NetworkError{
                    print(error)
                }
            }
        }
    }
}
