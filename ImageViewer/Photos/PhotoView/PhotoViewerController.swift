//
//  PhotoViewerController.swift
//  ImageViewer
//
//  Created by Mohammed Al-Dahleh on 2018-07-07.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class PhotoViewerController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    weak var photo: Photo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = photo.image
    }
    
    @IBAction func launchPhotoZoomController(_ sender: Any) {
    }
}
