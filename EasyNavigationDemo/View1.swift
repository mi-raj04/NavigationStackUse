//
//  View1.swift
//  EasyNavigationDemo
//
//  Created by mind on 14/05/24.
//

import SwiftUI

struct View1: View {
    
    @ObservedObject var viewModel: View1Model

    var body: some View {
        VStack(spacing: 8) {
            Text("view1")
            Button("Navigate") {
                viewModel.didTapNavigateView2()
            }
            .font(.subheadline)
        }
    }
}

class View1Model: ObservableObject {
    
    private var router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func didTapNavigateView2() {
        router.push(to: .view2)
    }
}
