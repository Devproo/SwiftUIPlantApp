//
//  WelcomeScreenView.swift
//  SwiftUIPlantApp
//
//  Created by ipeerless on 27/07/2023.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        ZStack {
            Image("rose")
                .resizable()
                .overlay(LinearGradient(colors: [Color.black.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomLeading))
            
                .ignoresSafeArea()
            
            VStack  {
                
                Image("logo")
                
                Spacer()
                Spacer()
                Text("Make Your")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                Text("Green House")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                
                Text("Decorate it")
                    .foregroundColor(Color.white.opacity(0.7))
                    .padding(.vertical, 8)
                
                Spacer()
                
                HStack {
                    Spacer()
                    NextBtn()
                }
                
            }
            .padding()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       WelcomeScreenView()
    }
}

struct NextBtn: View {
    var body: some View {
        HStack {
            Text("Next")
                .font(.system(size: 20))
                .fontWeight(.semibold)
            Image(systemName: "chevron.forward")
        }
        .foregroundColor(Color.black)
        .padding()
        .background(Color.white.opacity(0.5))
        .cornerRadius(50)
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
