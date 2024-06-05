//
//  View2.swift
//  EasyNavigationDemo
//
//  Created by mind on 14/05/24.
//
import SwiftUI

struct View2: View {
    
    @ObservedObject var viewModel: View2Model

    var body: some View {
        Text("view2")
        Button("Navigate") {
            viewModel.didTapNavigateView3()
        }
    }
}

class View2Model: ObservableObject {
    
    private var router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func didTapNavigateView3() {
        router.push(to: .view3)
    }
}




