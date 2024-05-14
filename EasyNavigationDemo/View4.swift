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
            Text("view3")
            Button("pop screen 2") {
                viewModel.didTapNavigateView2()
            }
            Button("pop screen 1") {
                viewModel.didTapNavigateView1()
            }
        }
    }
}


class View4Model: ObservableObject {
    
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func didTapNavigateView1() {
        router.popUntilIndex(1)
    }
    
    func didTapNavigateView2() {
        router.popUntilIndex(2)
    }
}


