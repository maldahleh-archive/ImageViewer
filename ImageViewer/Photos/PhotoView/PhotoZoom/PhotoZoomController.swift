//
//  PhotoZoomController.swift
//  ImageViewer
//
//  Created by Mohammed Al-Dahleh on 2018-07-08.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class PhotoZoomController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var photoImageView: UIImageView!
    
    var photo: Photo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
