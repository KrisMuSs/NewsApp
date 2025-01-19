
import Foundation


@MainActor
final class ViewModel: ObservableObject{
    
    //MARK: - Properties
    // Объявляем массив, который будет хранить список статей
    @Published var topNews: [Article] = []
    @Published var bottomNews: [Article] = []

    
    // Инициализатор, который автоматически запускает загрузку новостей при создании объекта ViewModel
    init(){
        fectchTopNews()
        fectchBottomNews()
    }
    
    //MARK: - Methods
    
    //Метод отвечает за добавление новостей в topNews
    func fectchTopNews() {
        Task {
            do{
                
                // Метод возвращает объект типа News, который содержит массив статей
                let articles = try await NetworkManager.shared.getNews(urlString: URLConstants.topNewsURL)
                
                // Присваивание массива статей типа [Article] в свойство topNews
                topNews = articles.articles
            }catch{
                // Обработка ошибки, если не удалось получить данные
                if let error = error as? NetworkError{
                    print(error)
                }
            }
        }
    }
    
    //Метод отвечает за добавление новостей в bottomNews
    func fectchBottomNews() {
        Task {
            do{
                
                // Метод возвращает объект типа News, который содержит массив статей
                let articles = try await NetworkManager.shared.getNews(urlString: URLConstants.bottomNewsURL)
                
                // Присваивание массива статей типа [Article] в свойство topNews
                bottomNews = articles.articles
            }catch{
                // Обработка ошибки, если не удалось получить данные
                if let error = error as? NetworkError{
                    print(error)
                }
            }
        }
    }

}
