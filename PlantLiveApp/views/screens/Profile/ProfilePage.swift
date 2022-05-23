import SwiftUI

struct ProfilePage: View {
  
  @State private var fullName = "Jack Harlow"
  @State private var isFavorite: Bool = false
  @State private var isPressed = true

  
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
          
          ProfilePlantList()
          
        }
        
        Spacer()
        
      }
      .navigationBarHidden(true)
      .navigationBarBackButtonHidden(true)
      .ignoresSafeArea(edges: .bottom)
    }
  }
}

struct EditProfile_Previews: PreviewProvider {
  static var previews: some View {
    ProfilePage()
  }
}

