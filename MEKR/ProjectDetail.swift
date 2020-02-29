//
//  ProjectDetail.swift
//  MEKR
//
//  Created by Apekshith Ramesha on 2/29/20.
//  Copyright © 2020 Apekshith Ramesha. All rights reserved.
//

import SwiftUI

struct ProjectDetail: View {
    var project: Project
    
    var body: some View {
        VStack {
            GeometryReader { geo in
                self.project.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width, height: 300)
            }
            
            ProfileImage(image: project.authorImage)
                .offset(y: -80)
                .padding(.bottom, -50)
            
            ScrollView {

            VStack(alignment: .leading) {
                Text(project.name)
                    .font(.title)
                HStack(alignment: .top) {
                    Text(project.difficulty)
                        .font(.subheadline)
                    Spacer()
                    Text(project.projectSpan)
                        .font(.subheadline)
                }
                Spacer()
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium odio sed hendrerit posuere. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras eu ornare metus, nec viverra enim. Proin scelerisque, urna non dapibus imperdiet, metus magna venenatis magna, vitae venenatis massa orci in ante. In congue lobortis risus, fringilla vulputate justo tempor vitae. Nullam aliquam consectetur ex in tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur quis diam porta, vulputate leo nec, volutpat nisl. Nulla eu nibh laoreet, iaculis nibh sed, ultrices mauris. Integer vehicula massa vitae orci placerat venenatis. Vestibulum rutrum consectetur tempus. Nulla facilisi.")
            }
            .padding()
            Spacer()
            }
        }
    }
}
struct ProjectDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetail(project: projectData[0])
    }
}
