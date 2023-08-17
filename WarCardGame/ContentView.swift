//
//  ContentView.swift
//  WarCardGame
//
//  Created by Andrey Minin on 17.08.2023.
//

import SwiftUI


struct ContentView: View {
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
                    Image("card11")
                    Spacer()
                    Image("card12")
                    Spacer()
                } // HStack
                Spacer()
                Image("dealbutton").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Игрок1")
                            .padding(.bottom, 10.0)
                            
                        Text("0")
                            .font(.largeTitle)
                    } // VStack
                    .foregroundColor(.white)
                    Spacer()
                    VStack {
                        Text("Компьютер")
                            .padding(.bottom, 10.0)
                        Text("0")
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
