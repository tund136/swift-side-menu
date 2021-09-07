//
//  HomeView.swift
//  swift-side-menu
//
//  Created by Danh Tu on 07/09/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.white)
                
                Text("Hello!")
            }
            .navigationBarItems(leading: Button(action: {
                print("DEBUG: Show menu here...")
            }, label: {
                Image("tu")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            }))
            .navigationBarTitle("Home", displayMode: .automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
