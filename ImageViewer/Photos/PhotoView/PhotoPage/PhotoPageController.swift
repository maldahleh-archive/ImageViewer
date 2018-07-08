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
        
        if let photoViewerController = photoViewerController(with: photoDataSource.currentPhoto()) {
            setViewControllers([photoViewerController], direction: .forward, animated: false, completion: nil)
        }
    }
    
    func photoViewerController(with photo: Photo) -> PhotoViewerController? {
        guard let photoViewerController = storyboard?.instantiateViewController(withIdentifier: "PhotoViewerController") as? PhotoViewerController else { return nil }
        
        photoViewerController.photo = photo
        return photoViewerController
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
