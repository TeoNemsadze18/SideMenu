//
//  SideMenuViewModel.swift
//  SideMenu
//
//  Created by teona nemsadze on 27.07.23.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case bookmarks
    case message
    case notifications
    case logout
    
    var title: String {
    switch self {
    case .profile: return "Profile"
    case .lists: return "Lists"
    case .bookmarks: return "Bookmarks"
    case .message: return "Message"
    case .notifications: return "Notifications"
    case .logout: return "Logout"
        
    }
}

    var imageName: String {
        switch self {
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .message: return "bubble.left"
        case .notifications: return "bell"
        case .logout: return "arrow.left.square"
        }
    }
}











