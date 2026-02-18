import SwiftUI

@Observable class MainViewModel {
    var count: Int = 0
    
    func incrementCount() {
        self.count += 1
    }
    
    func decrementCount() {
        self.count -= 1
    }
}

@main
struct module3GridOservableObjectScrollReaderApp: App {
    private let viewModel = MainViewModel()
    
    var body: some Scene {
        WindowGroup {
            Counter()
                .environment(viewModel)
        }
    }
}

