//
//  LayoutButtons.swift
//  instagridSwiftUI
//
//  Created by Djiveradjane Canessane on 03/02/2021.
//

import SwiftUI

struct LayoutButtons: View {
    @EnvironmentObject var layoutViewModel: LayoutViewModel
    @State var selectedFirstLayout = false
    @State var selectedSecondLayout = false
    @State var selectedThirdLayout = false
    var body: some View {
        HStack {
            Button(action: {
                withAnimation {
                    //Update GridView
                    layoutViewModel.showTopLeftRectangle = false
                    layoutViewModel.showBottomRightRectangle = true

                    //Update layout button Images
                    selectedFirstLayout = true
                    selectedSecondLayout = false
                    selectedThirdLayout = false
                }
            }) {
                ZStack {
                    Image("Layout 1")
                        .resizable()
                        .frame(width: 85, height: 85, alignment: .center)
                    if selectedFirstLayout {
                        Image("Selected")
                            .resizable()
                            .frame(width: 85, height: 85, alignment: .center)
                    }
                }
            }
            
            Button(action: {
                withAnimation {
                    //Update GridView
                    layoutViewModel.showTopLeftRectangle = true
                    layoutViewModel.showBottomRightRectangle = false
                    
                    //Update layout button Images
                    selectedFirstLayout = false
                    selectedSecondLayout = true
                    selectedThirdLayout = false
                }
            }) {
                ZStack {
                    Image("Layout 2")
                        .resizable()
                        .frame(width: 85, height: 85, alignment: .center)
                    if selectedSecondLayout {
                        Image("Selected")
                            .resizable()
                            .frame(width: 85, height: 85, alignment: .center)
                    }
                }
            }
            
            Button(action: {
                withAnimation {
                    //Update GridView
                    layoutViewModel.showTopLeftRectangle = true
                    layoutViewModel.showBottomRightRectangle = true
                    
                    //Update layout button Images
                    selectedFirstLayout = false
                    selectedSecondLayout = false
                    selectedThirdLayout = true
                }
            }) {
                ZStack {
                    Image("Layout 3")
                        .resizable()
                        .frame(width: 85, height: 85, alignment: .center)
                    if selectedThirdLayout {
                        Image("Selected")
                            .resizable()
                            .frame(width: 85, height: 85, alignment: .center)
                    }
                }
            }
        }
    }
}

//struct LayoutButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        LayoutButtons()
//    }
//}
