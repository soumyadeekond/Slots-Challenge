//
//  ContentView.swift
//  Slots-Challenge
//
//  Created by Soumya Deekonda on 8/12/22.
//
import SwiftUI

struct ContentView: View {
    @State var credits = 1000
    @State var fruit1 = 1
    @State var fruit2 = 1
    @State var fruit3 = 1
    
    
    
    
    var body: some View {
        ZStack
        {
            
            Image("background").ignoresSafeArea()
            
            VStack (spacing: 70)
            {
               
                Text("SwiftUI Slots")
                    .font(.largeTitle)
                    .fontWeight(.bold).padding()
                HStack
                {
                    
                    Text("Credits:\(credits)").font(.title).fontWeight(.bold).padding()
                    
                    
                }
                HStack (spacing: -40)
                {
                    
                    Image("fruit\(fruit1)").aspectRatio(contentMode: .fit)
                    Image("fruit\(fruit2)").aspectRatio(contentMode: .fit)
                    Image("fruit\(fruit3)").aspectRatio(contentMode: .fit)
                    
                }
                Button("Spin"){
                    fruit1 = Int.random(in: 1...3)
                    fruit2 = Int.random(in: 1...3)
                    fruit3 = Int.random(in: 1...3)
                    
                  
                    
                    if fruit1 == fruit2 && fruit2 == fruit3
                    {
                        credits += 50
                    }
                    else
                    {
                        credits -= 5
                    }
                    
                }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .font(.title2).foregroundColor(.black).background(.blue).cornerRadius(33)
            
               
                
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
