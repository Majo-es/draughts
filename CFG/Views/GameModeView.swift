//
//  GameModeView.swift
//  CFG
//
//  Created by Majo on 9/6/23.
//

import SwiftUI

struct GameModeView: View {
    var body: some View {
        
        //Container View: VStack things vertically
        VStack{
            Text("Game Mode")
                .padding()
            HStack{
            // Stack things horizontally
            HStack{Image(systemName: "square.grid.3x3.square")
                    .imageScale(.large)
                    .foregroundColor(.pink)
                Text("Normal")
                
            }
            //.padding()
            // Stack things horizontally
            HStack{
                Image(systemName: "timer")
                    .imageScale(.large)
                    .foregroundColor(.purple)
                Text("Timer")
              }
            }
        }
    }
}

struct GameModeView_Previews: PreviewProvider {
    static var previews: some View {
        GameModeView()
    }
}
