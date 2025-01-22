

import SwiftUI

struct AsyncImageView: View {
    
    let article: Article
    let imageWidth: CGFloat
    let imageHeight: CGFloat
    let placeholder: CGFloat
    
    var body: some View {
        
        // Проверяем, есть ли у статьи URL изображения и можем ли мы преобразовать его в объект URL
        if let url = article.urlToImage, let imageURL = URL(string: url){
            AsyncImage(url: imageURL) { phase in
                if let image = phase.image {
                    //Если изображение успешно загружено
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageWidth, height: imageHeight)
                        .cornerRadius(10)


                } else {
                    // Если изображение еще загружается или произошла ошибка
                    ZStack{
                        
                        Rectangle()
                            .frame(height: placeholder)
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
    }
}
