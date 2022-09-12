//
//  ContentView.swift
//  cw3part2
//
//  Created by Othman Alkous on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var thiker = 0
    @State var thiker1 = 0
    @State var thiker2 = 0
    var body: some View {
        VStack{
            ExtractedView(use: "استغفرالله العظيم", thiker: $thiker)
            ExtractedView(use: "سبحان الله وبحمده", thiker: $thiker1)
            ExtractedView(use: "سبحان الله العظيم", thiker: $thiker2)
            
        }
        
            }
                }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var use: String
    @Binding var thiker: Int
    var body: some View {
        HStack{
            Text(use)
                .font(.title)
                .fontWeight(.medium)
                .padding(.leading)
                
                Spacer()
            Text("\(thiker)")
                .font(.title2)
                
                .frame(width: 90, height: 90)
                .background(Color.green)
                .clipShape(Circle())
                .onTapGesture {
                    thiker = (thiker + 1)
                }
            
            .padding()        }
    }
}
