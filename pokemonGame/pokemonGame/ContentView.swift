//
//  ContentView.swift
//  pokemonGame
//
//  Created by phonwalai on 3/6/2564 BE.
//

import SwiftUI


struct ContentView: View {
   
    @State private var playerCard = "card1"
    @State private var cpuCard = "card2"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Spacer()
            Image("background")
                .ignoresSafeArea()
            VStack{
                Image("logo")
                HStack{
                    Image(playerCard)
                    Image(cpuCard)
                }
                Button(action: {
                    
                    let playerRand = Int.random(in: 1...10)
                    let cpuRand = Int.random(in: 1...10)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("fight")
                })
                
                HStack{
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

