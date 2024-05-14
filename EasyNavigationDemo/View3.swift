//
//  View3.swift
//  EasyNavigationDemo
//
//  Created by mind on 14/05/24.
//
import SwiftUI

struct View3: View {
    
    @ObservedObject var viewModel: View3Model
    
    var body: some View {
        VStack {
            Text("view3")
            Button("Navigate") {
                viewModel.didTapNavigateView4()
            }
            Button("pop screen 1") {
                viewModel.didTapNavigateView1()
            }
        }
    }
}


class View3Model: ObservableObject {
    
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func didTapNavigateView4() {
        router.push(to: .view4)
    }
    
    func didTapNavigateView1() {
        router.popUntilIndex(1)
    }
}
