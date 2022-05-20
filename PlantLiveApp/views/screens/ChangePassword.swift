//
//  ChangePassword.swift
//  PlantLiveApp
//
//  Created by Berkay Yaslan on 20.05.2022.
//

import SwiftUI

struct ChangePassword: View {
  
  @State private var password = "1234"
  @State private var isSecure: Bool = true
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    NavigationView {
      VStack {
        
        Text("Old Password")
          .multilineTextAlignment(.leading)
          .foregroundColor(.gray)
          .padding(.top)
          .offset(x: -120, y: 15)
        
        HStack {
          if isSecure {
            SecureField("Password", text: $password)
              .disableAutocorrection(true)
              .autocapitalization(.none)
              .textFieldStyle(.roundedBorder)
              .padding()
          } else {
            TextField("Your Password", text: $password)
              .disableAutocorrection(true)
              .autocapitalization(.none)
              .textFieldStyle(.roundedBorder)
              .padding()
          }
        }.overlay(alignment: .trailing) {
          Image(systemName: isSecure ? "eye.slash": "eye" )
            .onTapGesture {
              isSecure.toggle()
            }
            .padding(.trailing, 20.0)
        }
        .padding(.bottom)
        Button("Done") {
          presentationMode.wrappedValue.dismiss()
        }
        Spacer()
      }
      .navigationBarTitle(Text("Chnage Password"), displayMode: .inline)
      .padding(.vertical)
    }
  }
}

struct ChangePassword_Previews: PreviewProvider {
  static var previews: some View {
    ChangePassword()
  }
}
