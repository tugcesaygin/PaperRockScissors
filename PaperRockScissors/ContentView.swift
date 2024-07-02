//
//  ContentView.swift
//  PaperRockScissors
//
//  Created by Tuğçe Saygın on 2.07.2024.
//

import SwiftUI



struct ContentView: View {
    
    @State private var moves = ["paper","rock","scissors"]
    
    @State private var appsChoice = Int.random(in: 0...2)
    
    @State private var scorePoints = 0
    
    @State private var appsChoiceText = "BAŞLA"

    
    func clickMove(_ number : Int){
        appsChoice = Int.random(in: 0...2) // Yeni seçim yapılıyor
        appsChoiceText = moves[appsChoice] // Metni güncelle
        
        if number == 0{
            if appsChoice == 0{
                scorePoints = 0
                
            }else if appsChoice == 1{
                scorePoints += 1
            }else{
                scorePoints = 0
            }
            
        }else if number == 1{
            if appsChoice == 0{
                scorePoints += 0
            }else if appsChoice == 1{
                scorePoints = 0
            }else{
                scorePoints += 1
            }
        }else if number == 2{
                if appsChoice == 0{
                    scorePoints += 1
                }else if appsChoice == 1 {
                    scorePoints = 0
                }else{
                    scorePoints = 0
                }
            }
 
        }

    var body: some View{
       
        ZStack{
        
            LinearGradient(colors: [.pink,.purple], startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
                
            
            VStack(spacing : 40){
                
                Text("\(appsChoiceText)")
                    .font(.title.bold())
                    .foregroundColor(.white)

                
                VStack{
                        ForEach(0..<3){ number in
                            Button(){
                                clickMove(number)
                                
                            }label: {
                                Image(moves[number])
                                    .resizable()
                                    .frame(width:150,height:150)
                            }
                            .clipShape(.rect(cornerRadius: 20))
                            
            
                        }
                    }
                
                VStack{
                    Text("Your Score : \(scorePoints)")
                    
                }
        
            }
     
        }

    }
        
}




#Preview {
    ContentView()
}
