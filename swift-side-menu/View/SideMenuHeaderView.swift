//
//  SideMenuHeaderView.swift
//  swift-side-menu
//
//  Created by Danh Tu on 07/09/2021.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment: .leading) {
                SmallAvatar(imageName: "tu", size: 52)
                    .padding(.bottom, 16)
                
                Text("Tu Nguyen")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("@tund")
                    .font(.subheadline)
                    .padding(.bottom, 32)
                
                HStack (spacing: 12) {
                    HStack {
                        Text("1306")
                            .bold()
                            
                        Text("following")
                    }
                    
                    HStack {
                        Text("603")
                            .bold()
                        
                        Text("followers")
                    }
                    Spacer()
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SideMenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
