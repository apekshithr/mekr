//
//  CardView.swift
//  MEKR
//
//  Created by Apekshith Ramesha on 2/29/20.
//  Copyright © 2020 Apekshith Ramesha. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var project: Project

    var body: some View {
        VStack {
            project.image
                .resizable()
                .aspectRatio(contentMode: .fit)
 
            HStack {
                VStack(alignment: .leading) {
                    Text(project.difficulty)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(project.name)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(project.author.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
 
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(project: projectData[0])
    }
}
