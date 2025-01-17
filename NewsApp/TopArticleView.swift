


import SwiftUI


struct TopArticleView: View {
    
    // MARK: - Properties
    var article: Article
    
    // MARK: - Body
    var body: some View {
        VStack{
            // Проверяем, есть ли у статьи URL изображения и можем ли мы преобразовать его в объект URL
            if let url = article.urlToImage, let imageURL = URL(string: url){
                AsyncImage(url: imageURL) { phase in
                    if let image = phase.image {
                        //Если изображение успешно загружено
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(height: 150)
                            .cornerRadius(10)
                    } else {
                        // Если изображение еще загружается или произошла ошибка
                        ZStack{
                            
                            Rectangle()
                                .frame(height: 150)
                                .foregroundStyle(.secondary)
                                .opacity(0.3)
                                .cornerRadius(10)
                            
                            Image(systemName: "photo")
                                .resizable()
                                .foregroundStyle(.secondary)
                                .scaledToFit()
                                .frame(height: 50)
                        }
                    }
                }
            }
            
            
            VStack(alignment: .leading){
                Text(article.title)
                    .titleFont()
                Spacer()
                Text(article.publishedAt.converDate())
                    .descriptionFont()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .frame(width: 260, height: 260)
        .padding(10)
        //Для темной темы
        .background(.background)
        .cornerRadius(10)
    }
}
