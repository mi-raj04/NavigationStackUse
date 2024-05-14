//
//  View4.swift
//  EasyNavigationDemo
//
//  Created by mind on 14/05/24.
//

import SwiftUI

struct View4: View {
    
    @ObservedObject var viewModel: View4Model

    var body: some View {
        VStack {
            Text("view4")
            Button("pop screen 2") {
                viewModel.didTapNavigateView1(view: .view2)
            }
            Button("pop screen 1") {
                viewModel.didTapNavigateView1(view: .view1)
            }
        }
    }
}


class View4Model: ObservableObject {
    
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func didTapNavigateView1(view:Route) {
        router.popUntilView(view)
    }
}


