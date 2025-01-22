

import SwiftUI

struct MainImageView: View {
    
    // MARK: - Properties
    
    let article: Article

    // MARK: - Body

    var body: some View {
        GeometryReader { reader in
            if let url = article.urlToImage, let imageURL = URL(string: url){
                AsyncImage(url: imageURL){ phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y: -reader.frame(in: .global).minY)
                            .frame(
                                width: SizeContains.sizeWidth,
                                height: reader.frame(in: .global).minY + SizeContains.sizeHeight + 10
                            )
                        
                        
                    }
                }
            }
        }
        .frame(height: SizeContains.sizeHeight)
    }
}

