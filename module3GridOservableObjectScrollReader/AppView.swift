import SwiftUI


struct AppView: View {
    let viewModel: MainViewModel
    
    var body: some View {
        VStack {
            Text("App view")
            
            Button {
                viewModel.isLogin = false
            } label: {
                Text("Exit")
            }

        }
    }
}
