//
//  ImagePickerViewModel.swift
//  instagridSwiftUI
//
//  Created by Djiveradjane Canessane on 12/02/2021.
//

import SwiftUI

class ImagePickerViewModel: ObservableObject {
    @Published var selectedImageTopRight: UIImage?
    @Published var selectedImageTopLeft: UIImage?
    @Published var selectedImageBottomRight: UIImage?
    @Published var selectedImageBottomLeft: UIImage?
    @Published var isPresentingImagePicker = false
    var sender: Sender = .topLeft
    private(set) var sourceType: ImagePicker.SourceType = .camera

    func choosePhoto() {
        sourceType = .photoLibrary
        isPresentingImagePicker = true
    }

//    func takePhoto() {
//        sourceType = .camera
//        isPresentingImagePicker = true
//    }

    func didSelectImage(_ image: UIImage?) {
        switch sender {
        case .topLeft:
            selectedImageTopLeft = image
        case .topRight:
            selectedImageTopRight = image
        case .bottomLeft:
            selectedImageBottomLeft = image
        case .bottomRight:
            selectedImageBottomRight = image
        }
        isPresentingImagePicker = false
    }
}

enum Sender {
    case topLeft
    case topRight
    case bottomLeft
    case bottomRight
}
