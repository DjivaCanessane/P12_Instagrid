//
//  LayoutButtons.swift
//  instagridSwiftUI
//
//  Created by Djiveradjane Canessane on 03/02/2021.
//

import SwiftUI

struct LayoutButtons: View {
    @EnvironmentObject var layoutViewModel: LayoutViewModel
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation {
                    layoutViewModel.showTopLeftRectangle = false
                    layoutViewModel.showBottomRightRectangle = true
                }
            }) {
                Image("Layout 1")
                    .resizable()
                    .frame(width: 85, height: 85, alignment: .center)
            }
            
            
            
            
            Button(action: {
                withAnimation {
                    layoutViewModel.showTopLeftRectangle = true
                    layoutViewModel.showBottomRightRectangle = false
                }
            }) {
                Image("Layout 2")
                    .resizable()
                    .frame(width: 85, height: 85, alignment: .center)
            }
            
            
            Button(action: {
                withAnimation {
                    layoutViewModel.showTopLeftRectangle = true
                    layoutViewModel.showBottomRightRectangle = true
                }
            }) {
                Image("Layout 3")
                    .resizable()
                    .frame(width: 85, height: 85, alignment: .center)
            }
        }
    }
}

//struct LayoutButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        LayoutButtons()
//    }
//}
