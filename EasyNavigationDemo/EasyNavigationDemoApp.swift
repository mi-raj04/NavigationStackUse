//
//  EasyNavigationDemoApp.swift
//  EasyNavigationDemo
//
//  Created by mind on 14/05/24.
//

import SwiftUI

@main
struct EasyNavigationDemoApp: App {
    @StateObject var viewModel: ContentViewModel = ContentViewModel(router: Router())
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(viewModel)
        }
    }
}
