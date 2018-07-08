//
//  PhotoPageController.swift
//  ImageViewer
//
//  Created by Mohammed Al-Dahleh on 2018-07-07.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class PhotoPageController: UIPageViewController {
    let photoDataSource = PagePhotoControllerDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = photoDataSource
        
        guard let photoViewerController = storyboard?.instantiateViewController(withIdentifier: "PhotoViewerController") as? PhotoViewerController else { return }
        
        photoViewerController.photo = photoDataSource.currentPhoto()
        setViewControllers([photoViewerController], direction: .forward, animated: false, completion: nil)
    }
}

// MARK: - Utility
extension PhotoPageController {
    func setPhotosTo(_ photos: [Photo]) {
        photoDataSource.setPhotosTo(photos)
    }
    
    func setCurrentIndexAs(_ index: Int) {
        photoDataSource.setCurrentIndexAs(index)
    }
}
