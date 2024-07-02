//
//  ContentView.swift
//  PaperRockScissors
//
//  Created by Tuğçe Saygın on 2.07.2024.
//

import SwiftUI


struct ButtonView : ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
         
            
            
    }
}

extension View{
    func buttonView() -> some View{
        self.modifier(ButtonView())
    }
}

struct ContentView: View {
    
    @State private var moves = ["paper","rock","scissors"]
    
    @State private var appsChoice = Bool.random()
    
    @State private var usersSituation = false
    
    
    
    var body: some View{
       
        ZStack{
        
            LinearGradient(colors: [.pink,.purple], startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
                
            
            VStack{
                
                
                Spacer()
                
                
                VStack{
                        
                        ForEach(0..<3){ number in
                            Button{
                                
                            }label: {
                                Image(moves[number])
                                    .resizable()
                                    .frame(width:150,height:150)
                            }
                            .clipShape(.rect(cornerRadius: 20))
                            
            
                        }
                    }
                
               
                Spacer()
                
                
                VStack{
                    Text("Your Score")
                }
                
            }
            
            
           
        }
 
        
        
    }
        
}




#Preview {
    ContentView()
}
