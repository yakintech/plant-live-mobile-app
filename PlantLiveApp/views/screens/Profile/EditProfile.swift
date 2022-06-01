import SwiftUI

struct EditProfile: View {
  
  init(){
    UITableView.appearance().backgroundColor = .clear
  }
  @State private var firstName = "Jack"
  @State private var lastName = "Harlow"
  @State private var mail = "jackharlow@gmail.com"
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
      ZStack {
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
          Divider()
          NavigationLink(destination: ChangePassword()) {
            Text("Change Password")
              .fontWeight(.regular)
              .foregroundColor(.red)
              .font(.title3)
          }
          Spacer()
        }
      }
      .navigationBarTitle(Text("Edit Profile"), displayMode: .inline)
      .navigationBarBackButtonHidden(true)
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
