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

            VStack {
                HStack {
                    Rectangle().fill(SwiftUI.Color.red)
                    Rectangle().fill(SwiftUI.Color.green)
                }
                .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                HStack {
                    Rectangle().fill(SwiftUI.Color.purple)
                    Rectangle().fill(SwiftUI.Color.orange)
                }
                .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
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
