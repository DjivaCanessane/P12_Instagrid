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
    
    @State var verticalOffset: CGFloat = CGFloat.zero
    @State var horizontalOffset: CGFloat = CGFloat.zero

    @State var hasSwipped: Bool = false
    
    private func isPortraitMode() -> Bool {
        return horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var body: some View {
        let headerView = HeaderView()
        let gridLayout = GridLayout()
            .offset(x: horizontalOffset, y: verticalOffset)
            .gesture(DragGesture(minimumDistance: 3, coordinateSpace: .local)
                .onEnded({ (value) in
                    // up swipe
                    if value.translation.height < 0 && isPortraitMode() {
                        
                        withAnimation {
                            self.verticalOffset = -800
                        }
                        hasSwipped = true
                        
                    }
                    // left swipe
                    else if value.translation.width < 0 && !isPortraitMode() {
                        hasSwipped = true
                        withAnimation {
                            self.horizontalOffset = -800
                        }
                    }
                })
            )
            
        let layoutButtons = LayoutButtons()
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            if isPortraitMode() {
                GeometryReader { geometry in
                    VStack {
                        headerView
                        gridLayout
                        HStack {
                            layoutButtons
                        }
                        .padding(.bottom)
                        .padding(.horizontal)
                        
                        
                    }.frame(width: geometry.size.width,
                            height: geometry.size.height,
                            alignment: .center)
                }
            } else {
                GeometryReader { geometry in
                    HStack {
                        headerView
                        VStack {
                            Text("Instagrid")
                                .font(Font.custom("ThirstySoftRegular", size: 30))
                                .padding(.top, 8)
                            gridLayout
                            
                        }
                        
                        VStack {
                            layoutButtons
                        }
                    }
                    .frame(width: geometry.size.width,
                            height: geometry.size.height,
                        alignment: .center)
                }
            }
            
            

        }
        .alert(isPresented: $hasSwipped) {
            Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("OK"), action: {
                
                withAnimation {
                    self.verticalOffset = 0
                    self.horizontalOffset = 0
                }
            }))
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(LayoutViewModel())
    }
}
