//
//  PagePhotoControllerDataSource.swift
//  ImageViewer
//
//  Created by Mohammed Al-Dahleh on 2018-07-08.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class PagePhotoControllerDataSource: NSObject {
    var photos: [Photo] = []
    var indexOfCurrentPhoto: Int!
    
    func currentPhoto() -> Photo {
        return photos[indexOfCurrentPhoto]
    }
}

// MARK: - UIPageViewCollectionDataSource
extension PagePhotoControllerDataSource: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let photoViewerController = viewController as? PhotoViewerController, let index = photos.index(of: photoViewerController.photo) else { return nil }
        
        if index == photos.startIndex {
            let finalIndex = photos.index(before: photos.endIndex)
            let finalPhoto = photos[finalIndex]
            
            return PhotoPageController.photoViewerControllerWith(photo: finalPhoto, controller: photoViewerController)
        } else {
            let beforeIndex = photos.index(before: index)
            let beforePhoto = photos[beforeIndex]
            
            return PhotoPageController.photoViewerControllerWith(photo: beforePhoto, controller: photoViewerController)
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let photoViewerController = viewController as? PhotoViewerController, let index = photos.index(of: photoViewerController.photo) else { return nil }
        
        if index == photos.index(before: photos.endIndex) {
            let startIndex = photos.startIndex
            let startPhoto = photos[startIndex]
            
            return PhotoPageController.photoViewerControllerWith(photo: startPhoto, controller: viewController)
        } else {
            let afterIndex = photos.index(after: index)
            let afterPhoto = photos[afterIndex]
            
            return PhotoPageController.photoViewerControllerWith(photo: afterPhoto, controller: photoViewerController)
        }
    }
}

// MARK: - Utility
extension PagePhotoControllerDataSource {
    func setPhotosTo(_ photos: [Photo]) {
        self.photos = photos
    }
    
    func setCurrentIndexAs(_ index: Int) {
        self.indexOfCurrentPhoto = index
    }
}
