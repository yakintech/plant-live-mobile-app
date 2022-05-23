import SwiftUI

struct ProfilePage: View {
  
  @State private var fullName = "Jack Harlow"
  @State private var isFavorite: Bool = false
  @State private var isHidden = true
  @State private var isPressed = true
  @State var plants : [Plant] = [
    Plant(name: "Outdoor", description: "Çok severiz", image: "lotus"),
    Plant(name: "Indoor", description: "Çok yaşar", image: "indoorPlant"),
    Plant(name: "Garden", description: "Bejamin Button", image: "ot"),
    Plant(name: "Flowering Plants", description: "Su istemez", image: "cicek"),
    Plant(name: "Green Plants", description: "çok pahalı...", image: "greenPlant"),
    Plant(name: "Cactus", description: "çok pahalı...", image: "cactus"),
    Plant(name: "Trees", description: "çok pahalı...", image: "tree"),
    Plant(name: "Agricultural Crops", description: "çok pahalı...", image: "seftali")]
  
  var body: some View {
    NavigationView {
      VStack {
        HStack {
          Image("jackHarlow")
            .resizable()
            .frame(width: 140, height: 140)
            .clipShape(Circle())
            .padding()
          VStack {
            Text(fullName)
              .font(.headline)
              .fontWeight(.semibold)
            NavigationLink(destination: EditProfile()) {
              Text("Edit Profile")
                .frame(width: 110, height: 30)
                .foregroundColor(.white)
                .background(Color("defaultgreen"))
                .cornerRadius(12)
            }
            
          }
          .padding()
        }
        

        VStack {
          HStack {
            Text("My Garden")
              .font(.body)
              .fontWeight(.bold)
              .foregroundColor(Color("defaultgreen"))
            Spacer()
            Button(action: {
              isPressed.toggle()
            }) {
              Image(systemName: isPressed ? "star" : "star.fill")
                .foregroundColor(Color("defaultgreen"))
                .imageScale(.large)
            }
          }.padding(.horizontal)
          Divider().background(Color("defaultgreen"))
          
          List {
          }
        }
        
        //        RoundedRectangle(cornerRadius: 20)
        //          .fill(Color(red: 0.41, green: 0.55, blue: 0.27))
        //          .frame(width: 360, height: 120)
        Spacer()
        
      }
      .navigationBarHidden(isHidden)
      .ignoresSafeArea(edges: .bottom)

    }
  }
}

struct EditProfile_Previews: PreviewProvider {
  static var previews: some View {
    ProfilePage()
  }
}

