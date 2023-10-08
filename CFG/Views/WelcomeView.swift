//
//  ContentView.swift
//  CFG
//
//  Created by Majo on 8/30/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        //A view that displays a root view and enables you to present additional views over the root view.
        NavigationStack{
            //Stack things vertically
            VStack{
               Text("Draughts")
                    .font(.largeTitle)
                    //.multilineTextAlignment(.center)
                Spacer()
                VStack(alignment: .leading){
                    
                    NavigationLink (destination: GameModeView()) {
                        // Stack things horizontally
                        HStack{Image(systemName: "square.grid.3x3.square")
                                .imageScale(.large)
                                .foregroundColor(.pink)
                            Text("Play")
                        }
                    }
                    
                    NavigationLink(destination: StatsView()){
                        //.padding()
                        // Stack things horizontally
                        HStack{
                            Image(systemName: "square.grid.3x3.square")
                                .imageScale(.large)
                                .foregroundColor(.purple)
                            Text("Stats")
                          }
                    }
                    
                    NavigationLink(destination: BoardView()){
                        //.padding()
                        // Stack things horizontally
                        HStack{
                            Image(systemName: "square.grid.3x3.square")
                                .imageScale(.large)
                                .foregroundColor(.brown)
                            Text("Board")
                          }
                    }
                }
                //Layout View: Spacer
                Spacer()
                Text("CFG iOS App Dev MOOC")
                    //.multilineTextAlignment(.center)
            }
            .padding()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
