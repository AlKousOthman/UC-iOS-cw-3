//
//  ContentView.swift
//  cw3part1
//
//  Created by Othman Alkous on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var Grade = ""
    @State var letter = ""
    var body: some View {
        ZStack{
            Color.cyan
                .ignoresSafeArea()
        
        VStack{
            
                   Text("حاسبة الدرجات")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            Image("calculator")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .cornerRadius(20)
                
            TextField("ادخل درجتك", text: $Grade)
                .multilineTextAlignment(.center)
                .frame(width:370 , height: 70)
                .background(Color.white)
                .padding()
            Spacer()
            Text("احسب درجتي")
                .font(.headline)
                .frame(width: 150, height: 65)
                .background(Color.yellow)
                .clipShape(Capsule())
                .padding()
                .onTapGesture {
                    if Int(Grade) ?? 0 >= 90 {
                        
                        letter = "امتياز"
                    }
                    else if Int(Grade) ?? 0 >= 80{
                        letter = "جيد جداً"
                    }
                    else if Int(Grade) ?? 0 >= 70{
                        letter = "جيد"
                    }
                    else if Int(Grade) ?? 0 >= 60 {
                        letter = "مقبول"
                    }
                    else {
                        letter = "راسب"
                    }
                }
                        
            Text("لقد حصلت على درجة")
                .fontWeight(.heavy)
            Spacer()
            Text(letter)
                .fontWeight(.semibold)
                .font(.system(size: 60))
                
                
                
                    
                
                
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
