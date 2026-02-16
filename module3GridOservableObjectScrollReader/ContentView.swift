import SwiftUI

// enviromintObject
// ScrollViewReader
// Greed

struct ContentView: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible()),
        //GridItem(.adaptive(minimum: 50, maximum: 100)),
    ]
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: true) {
            LazyVGrid(columns: columns, spacing: 40) {
                ForEach(0...9200000, id: \.self) { index in
                    Rectangle()
                        .fill(.cyan)
                        .frame(height: 200)
                        .overlay {
                            Text("index: \(index)")
                                .foregroundStyle(.black)
                                .font(.system(size: 20))
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
