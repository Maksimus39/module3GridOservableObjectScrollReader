import SwiftUI

struct ContentView2: View {
    @State private var targetID: Int? = nil
    
    let jumpTargets = [0, 10, 25, 50, 75, 99]
    let items = Array(0..<100)
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // 🔹 Неподвижная панель управления
                HStack(spacing: 8) {
                    ForEach(jumpTargets, id: \.self) { target in
                        Button("→ \(target)") {
                            targetID = target
                        }
                        .buttonStyle(.bordered)
                        .controlSize(.mini)
                        .tint(.blue)
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
                
                // 🔹 Прокручиваемая область
                ScrollView {
                    ScrollViewReader { proxy in
                        LazyVStack(spacing: 0) {
                            ForEach(items, id: \.self) { index in
                                Text("Элемент \(index)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                                    .frame(height: 60)
                                    .background(index % 2 == 0 ? Color.gray.opacity(0.1) : Color.clear)
                                    .id(index) // ← обязательно!
                            }
                        }
                        .onChange(of: targetID) { oldValue, newValue in
                            if let newID = newValue {
                                withAnimation(.easeOut(duration: 0.5)) {
                                    proxy.scrollTo(newID, anchor: .top)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Фиксированная панель")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
