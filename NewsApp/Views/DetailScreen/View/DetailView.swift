

import SwiftUI

struct DetailView : View {
    
    //MARK: - Properties
    
    let article: Article
    let spacing: CGFloat = 20
    
    //MARK: - Body
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            ScrollView(.vertical, showsIndicators: false){
                MainImageView(article: article)
                
                VStack(alignment: .leading, spacing: spacing){
                    
                    TitleView(article: article)
                    DescriptionView(article: article)
                    DateView(article: article)
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity,alignment: .leading)
                .background(.background)
                .background(GradientView())
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
            
            BackButtonView()
                .padding(.leading)
        }
    }
}



#Preview {
    DetailView(
        article: Article(
            title: "Example",
            description: "asdasda",
            url: "",
            urlToImage: "https://cdn.punchng.com/wp-content/uploads/2020/04/09180349/tiktok.png",
            publishedAt: Date()
        )
    )
}




