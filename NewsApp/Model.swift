
import Foundation

// MARK: - Welcome
//Одна статья
struct News: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
//Группа статей
struct Article: Codable {
    let title, description: String
    let url: String
    let urlToImage: String?
    let publishedAt: Date
}


