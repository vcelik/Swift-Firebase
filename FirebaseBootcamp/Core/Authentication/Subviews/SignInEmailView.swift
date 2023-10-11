//
//  SignInEmailView.swift
//  FirebaseBootcamp
//
//  Created by Volkan Celik on 27/05/2023.
//

import SwiftUI



struct SignInEmailView: View {
    
    @StateObject private var viewmodel=SignInEmailViewModel()
    @Binding var showSignInView:Bool
    
    var body: some View {
        VStack{
            TextField("Email...", text: $viewmodel.email)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            SecureField("Password...", text: $viewmodel.password)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            Button {
                Task{
                    do{
                        try await viewmodel.signUp()
                        showSignInView=false
                        return
                    }catch{
                        print(error)
                    }
                    
                    do{
                        try await viewmodel.signIn()
                        showSignInView=false
                        return
                    }catch{
                        print(error)
                    }

                }

            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height:55)
                    .frame(maxWidth:.infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Sign In With Email")
    }
}

struct SignInEmailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            SignInEmailView(showSignInView: .constant(false))
        }

    }
}
