//
//  Avatar.swift
//  swift-side-menu
//
//  Created by Danh Tu on 07/09/2021.
//

import SwiftUI

struct SmallAvatar: View {
    var imageName: String
    var size: CGFloat
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

struct SmallAvatar_Previews: PreviewProvider {
    static var previews: some View {
        SmallAvatar(imageName: "tu", size: 30)
    }
}
