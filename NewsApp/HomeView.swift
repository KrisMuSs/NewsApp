

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
                                VStack{
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
                                .frame(width: 260, height: 260)
                                .padding(10)
                                .background(.white)
                                .cornerRadius(10)
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
