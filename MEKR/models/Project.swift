//
//  Project.swift
//  MEKR
//
//  Created by Apekshith Ramesha on 2/29/20.
//  Copyright © 2020 Apekshith Ramesha. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Project: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    var author: String
    fileprivate var authorProfileImageName: String
    var detailsAddress: String //url to load instruction on how to recreate
    var projectSpan: String //time it takes for the project to be complete
    var category: String // category of the project eg. woodworking, 3D printing etc
    var difficulty: String
}

extension Project {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
    var authorImage: Image {
        ImageStore.shared.image(name: authorProfileImageName)
    }
}
