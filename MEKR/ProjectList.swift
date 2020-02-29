//
//  ProjectList.swift
//  MEKR
//
//  Created by Apekshith Ramesha on 2/29/20.
//  Copyright © 2020 Apekshith Ramesha. All rights reserved.
//

import SwiftUI

struct ProjectList: View {
    var body: some View {
        NavigationView { // wraps the list in a navigation view
            ScrollView {
                    ForEach(projectData) { project in
                        NavigationLink(destination: ProjectDetail(project: project)) { 
                            CardView(project: project)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
            .navigationBarTitle(Text("Projects"))
        }
    }
}
struct ProjectList_Previews: PreviewProvider {
    static var previews: some View {
        ProjectList()
    }
}
