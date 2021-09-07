//
//  SideMenuView.swift
//  swift-side-menu
//
//  Created by Danh Tu on 07/09/2021.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack() {
                // Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 240)
                
                // Cell items
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    SideMenuOptionView(viewModel: option)
                }
                .foregroundColor(.white)
            
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
