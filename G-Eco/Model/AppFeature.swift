//
//  AppFeature.swift
//  G-Eco
//
//  Created by Haikal Lazuardi on 21/08/23.
//

import SwiftUI

struct AppFeature: Identifiable, Equatable {
    let id: Int
    let filename: String
}

extension AppFeature {
    static let all = [
        AppFeature(id: 1, filename: "feature-0"),
        AppFeature(id: 2, filename: "feature-1"),
        AppFeature(id: 3, filename: "feature-2"),
        AppFeature(id: 3, filename: "feature-3"),
    ]
}
