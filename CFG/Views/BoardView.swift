//
//  BoardView.swift
//  CFG
//
//  Created by Majo on 9/6/23.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        VStack{
            //loop
            ForEach(0 ..< Utils.maxCells){row in
                    HStack{
                    ForEach(0 ..< Utils.maxCells){col in
                                    if (col.isMultiple(of: 2)){
 // button: Swift UI
                                        Button(action: {
                                                    // Button action
                                                    print("\(row),\(col) Tapped")
                                                }) {
                                                    
                                            Image(systemName: "square.fill")
                                                .foregroundColor(Utils.colourDarkCell)
                                                }
                                    }
                                    else{
                                        Button(action: {
                                                    // Button action
                                            print("\(row),\(col) Tapped")
                                                }) {
                                                    
                                            Image(systemName: "square.fill")
                                                .foregroundColor(Utils.colourLightCell)
                            }
                        }
                    }
                }
            }
        }
    }

}

struct BoardView_Previews: PreviewProvider {
        static var previews: some View {
            BoardView()
    }
}


