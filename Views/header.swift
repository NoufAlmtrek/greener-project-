import SwiftUI

struct header: View {
    var body: some View {
        ZStack {
            HStack{
                Image("Plant")
                    .resizable()
                    .frame(width: 55.0, height: 55.0)
                Text("Badges")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(Color("Dgreen"))
                             //   .ignoresSafeArea()

        }
        Spacer()
    }
}

struct header_Previews: PreviewProvider {
    static var previews: some View {
        header()
    }
}
