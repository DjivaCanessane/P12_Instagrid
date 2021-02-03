//
//  LayoutButtons.swift
//  instagridSwiftUI
//
//  Created by Djiveradjane Canessane on 03/02/2021.
//

import SwiftUI

struct LayoutButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                print("Bottom left button was tapped")
            }) {
                Image("Layout 1")
                    .resizable()
                    .frame(width: 85, height: 85, alignment: .center)
            }
            
            
            
            
            Button(action: {
                print("Bottom left button was tapped")
            }) {
                Image("Layout 2")
                    .resizable()
                    .frame(width: 85, height: 85, alignment: .center)
            }
            
            
            Button(action: {
                print("Bottom left button was tapped")
            }) {
                Image("Layout 3")
                    .resizable()
                    .frame(width: 85, height: 85, alignment: .center)
            }
        }
    }
}

struct LayoutButtons_Previews: PreviewProvider {
    static var previews: some View {
        LayoutButtons()
    }
}
