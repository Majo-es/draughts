//
//  StatsView.swift
//  CFG
//
//  Created by Majo on 9/6/23.
//

import SwiftUI

struct StatsView: View {
    //var always start with a lower case letter
    @State var userProfile: UserProfile = UserProfile (username: "CFG", gamesAttempted: 0)
    @State private var dataSaved : String = " "

     
     var body: some View {
         VStack{
             Text("\(userProfile.username)'s Stats")
                 .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
             
             Form{
                 HStack{
                     Text("Username:")
                     TextField ("username", text: $userProfile.username)
                     
 // onSubmit (SwiftUI): view modifier
                         .onSubmit {
                             saveUserProfile()
                         }
                 }
                 HStack{
                     Text("Games Attempted:")
                     //string interpolation: Adding different types to a string
                     Text("\(userProfile.gamesAttempted)")
                 }

             }
         }.onAppear{
             loadUserProfile()
     }
         
}
    func saveUserProfile() {
            UserDefaults.standard.set(userProfile.username, forKey: "username")
            UserDefaults.standard.set(userProfile.gamesAttempted, forKey: "gamesAttempted")
            dataSaved = "Saved!!!"
        }
        
        func loadUserProfile() {
            loadUserName()
            loadGamesAttempted()
        }
        
        func loadUserName() {
            if(UserDefaults.standard.object(forKey: "username") != nil) {
                userProfile.username = UserDefaults.standard.string(forKey: "username")!
            }
        }
        
        func loadGamesAttempted() {
            if(UserDefaults.standard.object(forKey: "gamesAttempted") != nil) {
                userProfile.gamesAttempted = UserDefaults.standard.integer(forKey: "gamesAttempted")
            }
        }
    }


struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
