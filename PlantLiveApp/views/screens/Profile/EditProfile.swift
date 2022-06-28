import SwiftUI

struct EditProfile: View {
  
  init(){
    UITableView.appearance().backgroundColor = .clear
  }
  @State private var firstName = "Jack"
  @State private var lastName = "Harlow"
  @State private var mail = "jackharlow@gmail.com"
  @State private var goLoginScreen = false
  @State private var showAlert = false
  @Environment(\.presentationMode) var presentationMode
  @StateObject var loginStatus = LoginStatus()
  
  var body: some View {
    VStack {
      Image("jackHarlow")
        .resizable()
        .frame(width: 140, height: 140)
        .clipShape(Circle())
        .padding([.leading, .bottom, .trailing])
      Button("Change Profile Photo") {
        //Change Photo
      }
      
      Divider()
      
      Form {
        HStack {
          Image(systemName: "person.fill")
            .padding(.horizontal, 8.0)
          Divider()
          TextField("First Name", text: $firstName)
            .disableAutocorrection(true)
            .autocapitalization(.none)
        }
        HStack {
          Image(systemName: "person.3.fill")
          Divider()
          TextField("Last Name", text: $lastName)
            .disableAutocorrection(true)
            .autocapitalization(.none)
        }
        HStack {
          Image(systemName: "envelope")
            .padding(.horizontal, 7.0)
          Divider()
          TextField("Email", text: $mail)
        }
      }
      
      
      NavigationLink(destination: ChangePassword()) {
        Text("Change Password")
          .fontWeight(.regular)
          .foregroundColor(.red)
          .font(.title3)
      }
      
      
      Divider()
      HStack {
        Button("Log Out") {
          showAlert = true
        }
        .font(.title3)
        .foregroundColor(.red)
        Image(systemName: "rectangle.portrait.and.arrow.right")
          .foregroundColor(.red)
          .font(.headline)
      }.alert(isPresented: $showAlert) {
        Alert(
          title: Text("Are you sure you want to logout?"),
          primaryButton: .destructive(Text("Log Out")) {
            loginStatus.login = false
            let userDefaultService = UserDefaultService()
            userDefaultService.setLoginStorage(email: "")
            goLoginScreen = true
          },
          secondaryButton: .cancel()
        )
      }
      
      NavigationLink("", destination: LoginScreen(), isActive: $goLoginScreen)
      Spacer()
    }
    .navigationBarTitle(Text("Edit Profile"), displayMode: .inline)
    .toolbar {
      ToolbarItem(placement: .navigationBarTrailing) {
        Button("Done") {
          presentationMode.wrappedValue.dismiss()
        }
      }
    }
  }
}

struct ProfilePage_Previews: PreviewProvider {
  static var previews: some View {
    EditProfile()
  }
}
