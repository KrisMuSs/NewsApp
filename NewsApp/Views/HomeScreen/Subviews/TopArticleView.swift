


import SwiftUI


struct TopArticleView: View {
    
    // MARK: - Properties
    var article: Article
    
    // MARK: - Body
    var body: some View {
        VStack{
            AsyncImageView(
                article: article,
                imageWidth: 260,
                imageHeight: 150,
                placeholder: 150
            )

            
            
            VStack(alignment: .leading){
                TitleView(article: article)
                Spacer()
                DateView(article: article)

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

