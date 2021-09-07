//
//  SideMenuOptionView.swift
//  swift-side-menu
//
//  Created by Danh Tu on 07/09/2021.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: viewModel.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                
            Text(viewModel.title)
                .font(.title3)
                .fontWeight(.semibold)
            
            Spacer()
        }
        .padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .bookmarks)
    }
}
