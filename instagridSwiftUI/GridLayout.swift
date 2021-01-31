//
//  MainLayout.swift
//  instagridSwiftUI
//
//  Created by Djiveradjane Canessane on 28/01/2021.
//

import SwiftUI

struct GridLayout: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(SwiftUI.Color.blue)
            VStack {
                HStack {
                    
                }
                HStack {
                    
                }
            }
        }
        .background(SwiftUI.Color.blue)
        .aspectRatio(1, contentMode: .fill)
        .frame(width: 280, height: 280, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct MainLayout_Previews: PreviewProvider {
    static var previews: some View {
        GridLayout()
    }
}
