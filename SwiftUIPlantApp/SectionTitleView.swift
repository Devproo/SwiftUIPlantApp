//
//  SectionTitleView.swift
//  SwiftUIPlantApp
//
//  Created by ipeerless on 27/07/2023.
//

import SwiftUI

struct SectionTitleView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color.green)
            Spacer()
            Text("Sea All")
                .fontWeight(.medium)
                .foregroundColor(Color.green.opacity(0.5))
        }
    }
}


struct SectionTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitleView(title: "Recommended")
    }
}
