//
//  MainLayout.swift
//  instagridSwiftUI
//
//  Created by Djiveradjane Canessane on 28/01/2021.
//

import SwiftUI

struct GridLayout: View {
    @EnvironmentObject var layoutViewModel: LayoutViewModel
    
    var body: some View {
        ZStack {

            VStack {
                VStack {
                    HStack {
                        if layoutViewModel.showTopLeftRectangle {
                            Button(action: {
                                print("Top left button was tapped")
                            }) {
                                ZStack {
                                    Rectangle().fill(SwiftUI.Color.white)
                                    Image("Plus")
                                }
                            }
                        }
                        Button(action: {
                            print("Top right button was tapped")
                        }) {
                            ZStack {
                                Rectangle().fill(SwiftUI.Color.white)
                                Image("Plus")
                            }
                        }
                    }
                    .padding(.horizontal, 8)
                    .padding(.top, 8)
                    HStack {
                        Button(action: {
                            print("Bottom left button was tapped")
                        }) {
                            ZStack {
                                Rectangle().fill(SwiftUI.Color.white)
                                Image("Plus")
                            }
                        }
                        if layoutViewModel.showBottomRightRectangle {
                            Button(action: {
                                print("Bottom right button was tapped")
                            }) {
                                ZStack {
                                    Rectangle().fill(SwiftUI.Color.white)
                                    Image("Plus")
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 8)
                    .padding(.bottom, 8)
                    
                    
                    }
                .background(SwiftUI.Color.blue)
                .aspectRatio(1, contentMode: .fill)
                .frame(width: 280, height: 280, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                Button("ToggleUP") {
//                    withAnimation{
//                        self.showTopLeftRectangle.toggle()
//                    }
//                }
//                Button("ToggleBottom") {
//                    withAnimation{
//                        self.showBottomRightRectangle.toggle()
//                    }
//                }
            }
            
            
        }
        
        
    }
    
    
}

extension View {
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
//struct MainLayout_Previews: PreviewProvider {
//    static var previews: some View {
//        GridLayout()
//    }
//}
