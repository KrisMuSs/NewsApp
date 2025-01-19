

import SwiftUI


struct BottomArticleView: View {
    
    // MARK: - Properties
    var article: Article
    
    // MARK: - Body
    var body: some View {
        
        VStack{
            
            if let url = article.urlToImage, let imageUrl = URL(string: url) {
                AsyncImage(url: imageUrl) { phase in
                    
                    if let image = phase.image{
                        //Если изображение успешно загружено
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                            .cornerRadius(10)
                        
                    } else {
                        ZStack{
                            Rectangle()
                                .frame(height: 120)
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
            
            
        }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}
