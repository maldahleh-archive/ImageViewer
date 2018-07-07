//
//  PhotoPickerManager.swift
//  ImageViewer
//
//  Created by Mohammed Al-Dahleh on 2018-07-06.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit
import MobileCoreServices

class PhotoPickerManager: NSObject {
    private let imagePickerController = UIImagePickerController()
    private let presentingController: UIViewController
    
    init(presentingController: UIViewController) {
        self.presentingController = presentingController
        
        super.init()
        configure()
    }
    
    private func configure() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePickerController.sourceType = .camera
            imagePickerController.cameraDevice = .front
        } else {
            imagePickerController.sourceType = .photoLibrary
        }
        
        imagePickerController.mediaTypes = [kUTTypeImage as String]
    }
}

// MARK: - Presentation
extension PhotoPickerManager {
    func present(animated: Bool) {
        presentingController.present(imagePickerController, animated: animated, completion: nil)
    }
}
