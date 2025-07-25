import SwiftUI

struct WeeklyandDestinations: View {
    @State private var messageString: String = "Central Park, NYC"
    @State private var imageName: String = "image0"
    
    var body: some View {
        ZStack {
            Image("background 3")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(0)
                    .shadow(radius: 40)
                    .padding()
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.green)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .padding()
                
                Spacer()
                
                Button("Show Destinations!") {
                    if imageName == "image0" {
                        imageName = "image1"
                        messageString = "Brooklyn Botanic Garden, NYC"
                    } else {
                        imageName = "image0"
                        messageString = "Central Park, NYC"
                    }
                }
                .buttonStyle(.borderedProminent)
                .padding(.bottom)
            }
        }
    }
}
#Preview {
    WeeklyandDestinations ()
}
