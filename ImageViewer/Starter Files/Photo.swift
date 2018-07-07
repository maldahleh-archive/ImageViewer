//
//  Photo.swift
//  ImageViewer
//
//  Created by Pasan Premaratne on 9/26/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import CoreData
import UIKit

public class Photo: NSManagedObject {}

extension Photo {
    static var entityName: String {
        return String(describing: Photo.self)
    }
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        let request = NSFetchRequest<Photo>(entityName: "Photo")
        request.sortDescriptors = []
        return request
    }
}

extension Photo {
    var image: UIImage {
        return UIImage()
    }
}
