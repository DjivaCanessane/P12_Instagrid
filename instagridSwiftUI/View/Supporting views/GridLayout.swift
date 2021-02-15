//
//  MainLayout.swift
//  instagridSwiftUI
//
//  Created by Djiveradjane Canessane on 28/01/2021.
//

import SwiftUI

struct GridLayout: View {
    @EnvironmentObject var layoutViewModel: LayoutViewModel
    @EnvironmentObject var imagePickerViewModel: ImagePickerViewModel

    @Binding var activeSheet: ActiveSheet?
    @Binding var rect: CGRect
    var body: some View {
            VStack {
                HStack {
                    if layoutViewModel.showTopLeftRectangle {
                        Button(action: {
                            print("Top left button was tapped")
                            imagePickerViewModel.sender = .topLeft
                            imagePickerViewModel.choosePhoto()
                            activeSheet = .pickImage
                        }) {
                            imageView(for: imagePickerViewModel.selectedImageTopLeft)
                        }
                    }
                    Button(action: {
                        print("Top right button was tapped")
                        imagePickerViewModel.sender = .topRight
                        imagePickerViewModel.choosePhoto()
                        activeSheet = .pickImage
                    }) {
                        imageView(for: imagePickerViewModel.selectedImageTopRight)
                    }
                }
                .padding(.horizontal, 8)
                .padding(.top, 8)
                HStack {
                    Button(action: {
                        print("Bottom left button was tapped")
                        imagePickerViewModel.sender = .bottomLeft
                        imagePickerViewModel.choosePhoto()
                        activeSheet = .pickImage
                    }) {
                        imageView(for: imagePickerViewModel.selectedImageBottomLeft)
                    }
                    if layoutViewModel.showBottomRightRectangle {
                        Button(action: {
                            print("Bottom right button was tapped")
                            imagePickerViewModel.sender = .bottomRight
                            imagePickerViewModel.choosePhoto()
                            activeSheet = .pickImage
                        }) {
                            imageView(for: imagePickerViewModel.selectedImageBottomRight)
                        }
                    }
                }
                .padding(.horizontal, 8)
                .padding(.bottom, 8)
                
                
            }
            .background(SwiftUI.Color.blue)
            .aspectRatio(1, contentMode: .fit)
            .padding(8)
            .background(RectGetter(rect: $rect))
            
        
    }

    @ViewBuilder
    func imageView(for image: UIImage?) -> some View {
        if let image = image {
            ZStack {
                Rectangle().fill(SwiftUI.Color.white)
                GeometryReader { reader in
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: reader.size.width, height: reader.size.height, alignment: .center)
                        .clipped()
                }
                
            }
        }
        else {
            ZStack {
                Rectangle().fill(SwiftUI.Color.white)
                Image("Plus")
            }
        }
    }
}

//struct MainLayout_Previews: PreviewProvider {
//    static var previews: some View {
//        GridLayout().environmentObject(LayoutViewModel())
//    }
//}
