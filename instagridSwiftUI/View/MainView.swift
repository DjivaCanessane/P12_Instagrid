//
//  ContentView.swift
//  instagridSwiftUI
//
//  Created by Djiveradjane Canessane on 28/01/2021.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var layoutViewModel: LayoutViewModel
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        let topItems = TopItems()
        let gridLayout = GridLayout()
        let layoutButtons = LayoutButtons()
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            if horizontalSizeClass == .compact && verticalSizeClass == .regular {
                GeometryReader { geometry in
                    VStack {
                        topItems
                        gridLayout
                        layoutButtons
                        
                    }.frame(width: geometry.size.width,
                            height: geometry.size.height,
                            alignment: .center)
                }
            } else {
                GeometryReader { geometry in
                    HStack {
                        VStack {
                            topItems
                            layoutButtons
                            
                        }
                        gridLayout
                    }
                    .frame(width: geometry.size.width,
                            height: geometry.size.height,
                        alignment: .center)
                }
            }
            
            

        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(LayoutViewModel())
    }
}
