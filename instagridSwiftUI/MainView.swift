//
//  ContentView.swift
//  instagridSwiftUI
//
//  Created by Djiveradjane Canessane on 28/01/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {

        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            GeometryReader { geometry in
                VStack {
                    TopItems()
                    GridLayout()
                    
                    
                }.frame(width: geometry.size.width,
                        height: geometry.size.height,
                        alignment: .center)
            }
            

        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
