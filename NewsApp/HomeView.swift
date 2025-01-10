

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties
    @State var news: [Article] = []
    
    // MARK: - Body
    var body: some View {
        VStack {
           // Text("Hello")
            ForEach(news, id: \.url){ article in
                Text(article.description)
            }
        }
        //Выполни блок кода, когда появиться View структура
        .onAppear(){
            Task{
                await fectchNews()
            }
        }
    }
    // MARK: - Methods
    
    func fectchNews() async {
        do{
            let articles = try await NetworkManager.shared.getNews()
            news = articles.articles
        }catch{
            if let error = error as? NetworkError{
            print(error)
            }
        }
    }

    
}

#Preview {
    HomeView()
}
