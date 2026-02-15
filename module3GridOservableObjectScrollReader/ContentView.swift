import SwiftUI

// enviromintObject
// ScrollViewReader
// Greed

struct ContentView: View {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        //GridItem(.fixed(100))
    ]
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: true) {
            LazyVGrid(columns: columns) {
                ForEach(0...9200000, id: \.self) { index in
                    Rectangle()
                        .fill(.cyan)
                        .frame(height: 50)
                        .overlay {
                            Text("index: \(index)")
                        }
                }
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
