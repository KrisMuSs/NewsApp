

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties
    @StateObject var vm = ViewModel()
    
    // MARK: - Body
    var body: some View {
            NavigationView{
                ScrollView(.vertical, showsIndicators: false){
                    Text("Top News")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(vm.topNews, id: \.url) { article in
                                TopArticleView(article: article)
                            }
                           
                        }
                        .padding(.horizontal)
                    }
                }
                .background(.secondary.opacity(0.3))
            }
        
        
    }
    // MARK: - Methods
    
    

    
}

#Preview {
    HomeView()
}


