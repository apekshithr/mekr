//
//  ProfileImage.swift
//  MEKR
//
//  Created by Apekshith Ramesha on 2/29/20.
//  Copyright © 2020 Apekshith Ramesha. All rights reserved.
//

import SwiftUI

struct ProfileImage: View {
    var image: Image
    
    var body: some View {
        image
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 80, height: 80, alignment: .center)
        .border(Color.white)
        .clipShape(Circle())
        
//        image
//            .clipShape(Circle())
//            .overlay(
//                Circle().stroke(Color.white, lineWidth: 4))
//            .shadow(radius: 10)
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage(image: Image("apekshith"))
    }
}

