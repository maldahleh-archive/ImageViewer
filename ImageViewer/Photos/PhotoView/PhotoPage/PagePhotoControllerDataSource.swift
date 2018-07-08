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
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return nil
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
