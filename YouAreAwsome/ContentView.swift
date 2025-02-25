//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Student2 on 1/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = " "
    @State private var imageName = " "
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        
        VStack {
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .frame(minHeight: 130)
                .animation(.easeInOut(duration: 0.15), value: message)

            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["You Are Awsome!",
                                "When The Genius Bar Needs Help, They Call You!",
                                "You Are Great!",
                                "Fabulous? That's You!",
                                "You Are Fantastic!",
                                "You Make Me Smile!"]
                
                message = messages[messageNumber]
                messageNumber += 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
           
//               message = (message == message1 ? message2: message1)
//                imageName = (imageName == "image0" ? "image1" : "image0" )

                imageName = "image\(imageNumber)"
//                imageNumber = imageNumber + 1
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
