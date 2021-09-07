//
//  HomeView.swift
//  swift-side-menu
//
//  Created by Danh Tu on 07/09/2021.
//

import SwiftUI

struct HomeView: View {
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                ExtractedView()
                    .cornerRadius(isShowing ? 20 : 0)
                    .offset(x: isShowing ? 300 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    }, label: {
                        SmallAvatar(imageName: "tu", size: 36)
                    }))
                    .navigationBarTitle("Home", displayMode: .inline)
            }
            .onAppear {
                isShowing = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ExtractedView: View {
    var body: some View {
        ZStack {
            Color(.white)
            
            Text("Home View")
        }
    }
}
