//
//  Route.swift
//  EasyNavigationDemo
//
//  Created by mind on 14/05/24.
//

import Foundation

enum Route {
    case view1
    case view2
    case view3
    case view4
}

extension Route: Hashable {}

class Router: ObservableObject {
    
    @Published var stack = [Route]()
    
    func push(to view: Route) {
            stack.append(view)
        }
    
    func popUntilView(_ view: Route) {
        guard let index = stack.firstIndex(of: view) else {
            stack.removeAll()
            return
        }
        
        stack.removeSubrange((index + 1)...)
    }

        func pop() {
            stack.removeLast()
        }
        
        func popToRootView() {
            stack.removeAll()
        }
}

