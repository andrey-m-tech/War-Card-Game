//
//  ContentView.swift
//  WarCardGame
//
//  Created by Andrey Minin on 17.08.2023.
//

import SwiftUI


struct ContentView: View {
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        
        ZStack() {
            // Background
            Image("background").resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                } // HStack
                Spacer()
                
                Button {
                    // code
                    // Update the cards
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    // update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    } // if
                    else if playerRand < cpuRand {
                        cpuScore += 1
                        
                    }//else
                    
                } label: {
                    VStack {
                        Image("dealbutton").resizable()
                            .aspectRatio(contentMode: .fit)
                    }//VStack
                    
                    .frame(height: 50)
                } // Button

                
                   
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Игрок1")
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                    } // VStack
                    .foregroundColor(.white)
                    Spacer()
                    VStack {
                        Text("Компьютер")
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    } // VStack
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                } // HStack
                Spacer()
            } // VStack
            
        }// ZStack background
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
