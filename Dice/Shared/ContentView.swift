//
//  ContentView.swift
//  Shared
//
//  Created by Jennifer Li on 1/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showDetails = false
    @State private var diceNum = "0"
    @State private var lastRolled = ""
    @State private var diceType = "dice"
//    @State private var wpOpacity = 0.4
    
    var body: some View {
        
        VStack() {
            
            Image("\(diceType)\(diceNum)")
            
            Text("Last rolled: \(lastRolled)")
                .foregroundColor(.gray)
            
            Button("Change dice"){
                if diceType == "dice"{
                    diceType = "purple"
                }
                else{
                    diceType = "dice"
                }
            }
            .foregroundColor(.orange)
            
            Button("Roll") {
                if diceNum != "0"{
                    lastRolled = diceNum
                }
                diceNum = "\(Int.random(in: 1..<7))"
            }
            .font(.largeTitle)
            .padding()
            
        }
        .scaledToFill()
        .background(
                Image("wallpaper")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.height*612/530, height: UIScreen.main.bounds.height)
                    .opacity(0.4)
            )
        
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
