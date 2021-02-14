//
//  instagridSwiftUIApp.swift
//  instagridSwiftUI
//
//  Created by Djiveradjane Canessane on 28/01/2021.
//

import SwiftUI

@main
struct instagridSwiftUIApp: App {
    var layoutViewModel = LayoutViewModel()
    var imagePickerViewModel = ImagePickerViewModel()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(layoutViewModel)
                .environmentObject(imagePickerViewModel)
        }
    }
}
