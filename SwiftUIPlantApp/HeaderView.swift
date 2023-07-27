//
//  HeaderView.swift
//  SwiftUIPlantApp
//
//  Created by ipeerless on 27/07/2023.
//

import SwiftUI

struct   HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Executive Plants")
                    .font(.title)
                    .foregroundColor(.green)
                    .fontWeight(.semibold)
                Text("fot your hobby")
                    .foregroundColor(.green)
                    .font(.title)
            }
            Spacer()
            Image("my")
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(50)
        }
    }
}
