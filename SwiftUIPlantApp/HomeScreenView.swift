//
//  HomeScreenView.swift
//  SwiftUIPlantApp
//
//  Created by ipeerless on 27/07/2023.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            VStack {
                HeaderView()
                CategoriesView()
                
                SectionTitleView(title: "Recommended")
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 14) {
                        RecommendPlantCardView(title: "Oscar Plant", price: 150, image: "oscar0")
                        RecommendPlantCardView(title: "Oscar Plant", price: 130, image: "oscar1")
                        
                    }
                }
                
            }
            .padding()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}




struct  RecommendPlantCardView: View {
    var title: String
    var price: Int
    var image: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                Image("rose")
                Image(image)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
            }
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.8")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green.opacity(0.5))
                }
                HStack {
                    Text("$\(price)")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.primary)
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(.all, 8)
                        .background(Color.green)
                        .cornerRadius(30)
                        .onTapGesture {
                            
                        }
                }
            }
            .padding()
        }
        .frame(width: 200)
        .background(Color.white)
        .cornerRadius(20.0)
    }
}
