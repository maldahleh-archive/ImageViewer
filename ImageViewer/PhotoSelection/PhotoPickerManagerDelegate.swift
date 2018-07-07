//
//  PhotoPickerManagerDelegate.swift
//  ImageViewer
//
//  Created by Mohammed Al-Dahleh on 2018-07-07.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

protocol PhotoPickerManagerDelegate: class {
    func manager(_ manager: PhotoPickerManager, didPickImage image: UIImage)
}
