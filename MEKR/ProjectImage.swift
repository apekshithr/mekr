//
//  ProjectImage.swift
//  MEKR
//
//  Created by Apekshith Ramesha on 2/29/20.
//  Copyright © 2020 Apekshith Ramesha. All rights reserved.
//

import SwiftUI

struct ProjectImage: View {
    var image: Image
    
    var body: some View {
        GeometryReader { geo in
            self.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geo.size.width)
        }
    }
}

struct ProjectImage_Previews: PreviewProvider {
    static var previews: some View {
        ProjectImage(image: Image("turtlerock"))
    }
}
