import SwiftUI

struct Counter: View {
    @Environment(MainViewModel.self) private var viewModel
    private let stopCountUp: Int = 12
    private let stopCountDown: Int = 0
    
    var body: some View {
        VStack(spacing: 24){
            HStack(spacing: 10){
                Button {
                    viewModel.decrementCount()
                } label: {
                    Text("-")
                        .foregroundStyle(viewModel.count == stopCountDown
                                         ? .red : .green
                        )
                        .font(.system(size: 25))
                }
                .disabled(viewModel.count == stopCountDown)
                
                Text(viewModel.count.description)
                    .font(.system(size: 50))
                    .foregroundStyle(.pink)
                
                Button {
                    viewModel.incrementCount()
                } label: {
                    Text("+")                        .font(.system(size: 25))
                        .foregroundStyle((viewModel.count == stopCountUp
                                          ? .red : .green))
                }
                .disabled(viewModel.count == stopCountUp)
            }
        }
    }
}
