import Foundation

actor NetworkManager{
    
    // MARK: - Properties
    static let shared = NetworkManager()
   

    //JSONDecoder помогает превратить текст в формате JSON в объект (в структуры или классы, определенные в коде), с которыми удобно работать.
    let decoder = JSONDecoder()
    
    // MARK: - Initializer
    // Установка стратегии .iso8601 говорит декодеру интерпретировать строки формата ISO 8601
    // (например, "2024-12-05T15:30:00Z") как тип Date.
    private init() {
        decoder.dateDecodingStrategy = .iso8601
    }
    
    //MARK: - Methods
    func getNews(urlString: String) async throws -> News {
        
        //Выбрасываем ошибку, если переменная не присвоилась
        guard let url = URL(string: urlString) else { throw NetworkError.invalidURL }
        //Получение данных и ответов с сервера
        let (data, response) = try await URLSession.shared.data(from: url)

        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw NetworkError.invalidResponse}
        
        do{
            // Декодируем полученные данные в объект типа News
            return try decoder.decode(News.self, from: data)
        }catch{
            // Если декодирование не удалось, выбрасываем ошибку
            throw NetworkError.invalidData
        }
    }
}

