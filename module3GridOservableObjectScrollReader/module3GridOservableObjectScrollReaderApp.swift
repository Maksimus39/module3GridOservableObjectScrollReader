import SwiftUI
//import Combine

//class MainViewModel: ObservableObject {
//    @Published var isLogin = false
//    @Published var count: Int = 0
//    
//    func checkLogin() {
//        self.isLogin = true
//    }
//    
//    func incrementCount() {
//        self.count += 1
//    }
//    
//    func decrementCount() {
//        self.count -= 1
//    }
//}
@Observable
class MainViewModel {
     var isLogin = false
     var count: Int = 0
    
    func checkLogin() {
        self.isLogin = true
    }
    
    func incrementCount() {
        self.count += 1
    }
    
    func decrementCount() {
        self.count -= 1
    }
}

@main
struct module3GridOservableObjectScrollReaderApp: App {
    @Bindable var viewModel = MainViewModel()
    
    var body: some Scene {
        WindowGroup {
//            switch viewModel.isLogin {
//            case true : AppView(viewModel: viewModel)
//                //.environmentObject(viewModel)
//            case false: LoginView(viewModel: viewModel)
//                    //.environmentObject(viewModel)
//            }
            
            ContentView()
        }
    }
}




// ContentView()
