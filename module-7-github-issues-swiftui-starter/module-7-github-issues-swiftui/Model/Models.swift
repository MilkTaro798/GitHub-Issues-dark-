//
//  Models.swift
//  module-7-github-issues-swiftui
//
//  Created by Andrew Binkowski on 2/22/22.
//

import Foundation

// (doen)TODO: Add proper documentation for these models

struct GitHubUser: Codable, Hashable {
    let login: String
    let avatarUrl: String?
}

struct GitHubIssue: Codable, Identifiable, Hashable {
    let title: String?
    // We can use GitHub to conformt to `Identifiable`
    let id: UInt32?
    let createdAt: String?
    let body: String?
    let state: String?
    let user: GitHubUser
    let htmlUrl: String
    
    //(done)TODO: Create a computed property to format the store `createdAt` date in MMM dd,yyyy format
    var formattedDate: String?
}

