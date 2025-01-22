

import SwiftUI

struct BackButtonView: View {
    
    //MARK: - Properties
    
    //Environment позволяет методы родные эпловские и использовать их
    //dismiss позволит вернуться на предыдущее view
    @Environment(\.dismiss) var dismiss
    
    //MARK: - Body
    var body: some View {
        Button {
            dismiss()
        } label: {
            ZStack{
                Circle()
                    .frame(width: 34)
                    .foregroundStyle(.black)
                    .opacity(0.3)
                Image(systemName: "chevron.left")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                    .opacity(0.8)
            }
        }

    }
}

#Preview {
    BackButtonView()
}
