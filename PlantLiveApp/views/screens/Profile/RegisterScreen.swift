//
//  RegisterScreen.swift
//  PlantLiveApp
//
//  Created by Sena Kurtak on 8.06.2022.
//

import SwiftUI

import Alamofire

struct RegisterScreen: View {
  @State var registerModel: RegisterModel = RegisterModel()
  @State var showConfirmScreen = false
  @State var visibleFirst = false
  @State var visibleSecond = false
  @State var color = Color.black.opacity(0.7)
  @State var whiteBackGroundColor = Color.white.opacity(0.5)
  
  @State var checkedSubscribe = false
  @State var checkedTerms = false
  
  var body: some View {
    
    VStack{
      VStack{
        Text("Create an Account 🌱")
          .foregroundColor(Color(red: 104/255,green: 141/255,blue: 70/255,opacity: 1.0))
          .font(.title)
          .fontWeight(.bold)
      }
      .frame(width: 450 , height: 50)
      .background(.white)
      VStack{
        VStack{
          HStack{
            Image(systemName: "at")
            TextField("Email:",text: $registerModel.email)
              .textInputAutocapitalization(.never)
            Spacer()
          }
          .padding()
          Divider()
          HStack{
            Image(systemName: "lock.circle")
            VStack{
              if self.visibleFirst{
                TextField("Password", text: $registerModel.password)
                  .disableAutocorrection(true)
                  .textInputAutocapitalization(.never)
              }
              else {
                SecureField("Password", text: $registerModel.password)
                  .disableAutocorrection(true)
                  .textInputAutocapitalization(.never)
              }
            }
            Button(action: {
              self.visibleFirst.toggle()
            }){
              Image(systemName: self.visibleFirst ? "eye.slash.fill" : "eye.fill").foregroundColor(self.color)
            }
          }
          .padding()
          Divider()
          
          HStack{
            
            Image(systemName: "lock.circle")
            VStack{
              if self.visibleSecond{
                TextField("Password", text: $registerModel.confirmpassword)
              }
              else {
                SecureField("Password", text: $registerModel.confirmpassword)
              }
            }
            Button(action: {
              self.visibleSecond.toggle()
            }){
              Image(systemName: self.visibleSecond ? "eye.slash.fill" : "eye.fill").foregroundColor(self.color)
            }
          }
          .padding()
          VStack{
            HStack{
              Image(systemName: checkedSubscribe ? "checkmark.square.fill" : "square")
                .foregroundColor(checkedSubscribe ? Color(red: (104/250), green: 141/250, blue: 102/250) : Color.secondary)
                .onTapGesture {
                  self.checkedSubscribe.toggle()
                }
                .padding()
              Text("Unsubscribe from the mailing list")
              Spacer()
              
            }
            HStack{
              Image(systemName: checkedTerms ? "checkmark.square.fill" : "square")
                .foregroundColor(checkedTerms ? Color(red: (104/250), green: 141/250, blue: 102/250) : Color.secondary)
                .onTapGesture {
                  self.checkedTerms.toggle()
                }
                .padding()
              Text("I accept the Terms of use")
              Spacer()
              
            }
            .background(.white)
            HStack{
              Button("Create an account"){
                let userrepo = UserRepository()
                
                userrepo.register(registerModel: registerModel) { _ in
                  
                  //Eğer işlem başarılıysa confirmCode ekranına gidecek!!
                  showConfirmScreen = true
                  print("OKEY!")
                }
              }
              .foregroundColor(.white)
              .padding()
              .border(Color(red: (102/250), green: 102/250, blue: 102/250), width: 1)
              .background(Color(red: (104/250), green: 141/250, blue: 102/250))
              .cornerRadius(100)
              .opacity(0.7)
              
              
              NavigationLink("", destination:  RegisterEMailConfirmCodeScreen(email: registerModel.email), isActive: $showConfirmScreen)
            }
          }
        }
        .padding(20)
        .frame(width: 380 , height: 470)
        .background(.white)
        .padding(20)
        .cornerRadius(75)
        .padding()
      }
      VStack{
        Text("Already have an account?")
        NavigationLink(destination: LoginScreen()){
          Text("Log in")
        }
      }
      .frame(width: 370 , height: 100)
      .background(.white)
      Spacer()
    }
    .background(Color(red: (104/250), green: 141/250, blue: 102/250).opacity(0.4))
  }
}

struct RegisterScreen_Previews: PreviewProvider {
  static var previews: some View {
    RegisterScreen()
  }
}
