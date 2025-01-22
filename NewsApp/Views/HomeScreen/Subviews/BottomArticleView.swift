

import SwiftUI


struct BottomArticleView: View {
    
    // MARK: - Properties
    var article: Article
    
    // MARK: - Body
    var body: some View {
        
        VStack{
            AsyncImageView(
                article: article,
                imageWidth: 120,
                imageHeight: 120,
                placeholder: 120
            )

            VStack(alignment: .leading){
                TitleView(article: article)
                Spacer()
                //DateView(article: article)
                DescriptionView(article: article)
            }
            
            
        }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}
