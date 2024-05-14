//
//  EasyNavigationDemoApp.swift
//  EasyNavigationDemo
//
//  Created by mind on 14/05/24.
//

import SwiftUI

@main
struct EasyNavigationDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ContentViewModel(router: Router()))
        }
    }
}
