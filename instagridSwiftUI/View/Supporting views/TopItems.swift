//
//  TopItems.swift
//  instagridSwiftUI
//
//  Created by Djiveradjane Canessane on 28/01/2021.
//

import SwiftUI

struct TopItems: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        VStack {
            if horizontalSizeClass == .compact && verticalSizeClass == .regular {
                Text("Instagrid")
                    .font(Font.custom("ThirstySoftRegular", size: 30))
                    .padding()
                Image("Arrow Up")
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                    .frame(width: 15, height: 15, alignment: .center)
                Text("Swipe up to share")
                    .font(Font.custom("Delm-Medium", size: 20))
                    .padding()

            } else {
                Text("Instagrid")
                    .font(Font.custom("ThirstySoftRegular", size: 30))
                    .padding()
                Image("Arrow Left")
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                    .frame(width: 15, height: 15, alignment: .center)
                Text("Swipe left to share")
                    .font(Font.custom("Delm-Medium", size: 20))
                    .padding()

            }
            
        }
    }
}

struct TopItems_Previews: PreviewProvider {
    static var previews: some View {
        TopItems()
    }
}
