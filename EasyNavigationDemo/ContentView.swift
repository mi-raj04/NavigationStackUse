//
//  ContentView.swift
//  EasyNavigationDemo
//
//  Created by mind on 14/05/24.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var viewModel: ContentViewModel

    var body: some View {
        NavigationStack(
                    path: $viewModel.router.stack
                ) {
                    VStack(spacing: 8) {
                        Text("Hello, ContentView!")
                        Button("Navigate") {
                            viewModel.didTapNavigateView1View()
                        }
                        .font(.subheadline)
                    }
                    
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .view1:
                            View1(viewModel: viewModel.view1ViewModel)
                      
                        case .view2:
                            View2(viewModel: viewModel.view2ViewModel)

                        case .view3:
                            View3(viewModel: viewModel.view3ViewModel)

                        case .view4:
                            View4(viewModel: viewModel.view4ViewModel)
                        }
                    }
                }
    }
}

#Preview {
    ContentView(viewModel: ContentViewModel(router:Router()))
}

class ContentViewModel: ObservableObject {
    
    @Published var router: Router
    private var cancellables = Set<AnyCancellable>()

    init(router: Router) {
        self.router = router
        configureSubscriptions()
    }
    
    var view1ViewModel: View1Model {
        .init(router: router)
    }
    
    var view2ViewModel: View2Model {
        .init(router: router)
    }

    var view3ViewModel: View3Model {
        .init(router: router)
    }
    
    var view4ViewModel: View4Model {
        .init(router: router)
    }
    
    func didTapNavigateView1View() {
        router.push(to: .view1)
    }
}

private extension ContentViewModel {
    
    func configureSubscriptions() {
        router.$stack
            .sink { [weak self] _ in
                self?.objectWillChange.send()
            }
            .store(in: &cancellables)
    }
}





