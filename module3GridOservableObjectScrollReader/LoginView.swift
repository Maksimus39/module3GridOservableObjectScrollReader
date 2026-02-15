import SwiftUI

struct LoginView: View {
    // before
    //@EnvironmentObject var viewModel: MainViewModel
    
    // after
    let viewModel: MainViewModel
    
    private let stopCountUp: Int = 12
    private let stopCountDown: Int = 0
    
    var body: some View {
        VStack(spacing: 24){
            Button {
                viewModel.isLogin = true
            } label: {
                Text("Login")
            }
            
            HStack(spacing: 10){
                Button {
                    viewModel.decrementCount()
                } label: {
                    Text("-")
                        .foregroundStyle(viewModel.count == stopCountDown
                                         ? .red
                                         : .green
                        )
                        .font(.system(size: 25))
                }
                .disabled(viewModel.count == 0)
                
                Text(viewModel.count.description)
                    .font(.system(size: 50))
                    .foregroundStyle(.pink)
                
                Button {
                    viewModel.incrementCount()
                } label: {
                    Text("+")                        .font(.system(size: 25))
                        .foregroundStyle((viewModel.count == stopCountUp
                            ? .red
                            : .green))
                }
                .disabled(viewModel.count == stopCountUp)
            }
        }
    }
}
