//
//  PhotoPickerManager.swift
//  ImageViewer
//
//  Created by Mohammed Al-Dahleh on 2018-07-06.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class PhotoPickerManager: NSObject {
    private let imagePickerController = UIImagePickerController()
    private let presentingController: UIViewController
    
    init(presentingController: UIViewController) {
        self.presentingController = presentingController
        super.init()
    }
}

// MARK: - Presentation
extension PhotoPickerManager {
    func present(animated: Bool) {
        presentingController.present(imagePickerController, animated: animated, completion: nil)
    }
}
