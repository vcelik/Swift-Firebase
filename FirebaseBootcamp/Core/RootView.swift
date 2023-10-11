//
//  RootView.swift
//  FirebaseBootcamp
//
//  Created by Volkan Celik on 27/05/2023.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSignInView:Bool=false
    @EnvironmentObject private var vm:HomeViewModel



    
    var body: some View {
        ZStack{
            if !showSignInView{
                NavigationStack{
                    ProfileView(showSignInView: $showSignInView)
                        .environmentObject(vm)
                    //HomeView().environmentObject(vm)

                }
            }
        }
        .onAppear {
            let authUser=try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView=authUser == nil
            //try? AuthenticationManager.shared.getProvider()
        }
        .fullScreenCover(isPresented: $showSignInView) {
            NavigationStack{
                AuthenticationView(showSignInView: $showSignInView)
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
