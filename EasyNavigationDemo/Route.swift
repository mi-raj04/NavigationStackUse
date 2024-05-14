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
    
    func popUntilIndex(_ index: Int) {
        
            guard index >= 0 && index < stack.count else {
                fatalError("Index out of bounds")
            }
            
            while stack.count > index {
                stack.removeLast()
            }
        }

        func pop() {
            stack.removeLast()
        }
        
        func popToRootView() {
            stack.removeAll()
        }
}

