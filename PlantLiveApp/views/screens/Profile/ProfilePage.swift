import SwiftUI

struct ProfilePage: View {
  
  @State private var fullName = "Jack Harlow"
  
  var body: some View {
    
    VStack {
      HStack {
        Image("jackHarlow")
          .resizable()
          .frame(width: 140, height: 140)
          .clipShape(Circle())
          .padding(.trailing, 50.0)
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
            .fontWeight(.black)
            .foregroundColor(Color("defaultgreen"))
            .imageScale(.large)
          
        }.padding(.horizontal)
      }
      ProfilePlantList()
        .navigationBarHidden(true)
    }
  }
}

struct EditProfile_Previews: PreviewProvider {
  static var previews: some View {
    ProfilePage()
  }
}

