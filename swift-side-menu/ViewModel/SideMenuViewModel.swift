//
//  SideMenuViewModel.swift
//  swift-side-menu
//
//  Created by Danh Tu on 07/09/2021.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case bookmarks
    case messages
    case notifications
    case logout
    
    var title: String {
        switch self {
        case .profile:
            return "Profile"
        case .lists:
            return "Lists"
        case .bookmarks:
            return "Bookmarks"
        case .messages:
            return "Messages"
        case .notifications:
            return "Notifications"
        case .logout:
            return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile:
            return "person.fill"
        case .lists:
            return "list.bullet"
        case .bookmarks:
            return "bookmark"
        case .messages:
            return "bubble.left"
        case .notifications:
            return "bell.fill"
        case .logout:
            return "arrow.left.square"
        }
    }
}
