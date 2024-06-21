//
//  ContentView.swift
//  InteractivePractice2
//
//  Created by Tanisha Khabe on 6/21/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var titleText = "What is your name?"
    
    var body: some View {
        VStack (spacing: 75){
            Text(titleText)
                .font(.largeTitle)
            
            TextField("Type your name here", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.black, width: 2)
                
            Button("Submit Name") {
                titleText = "Welcome, \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
