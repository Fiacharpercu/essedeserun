import SwiftUI

struct ContentView: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4"]

    var body: some View {
        List(items, id: \.self) { item in
            HStack {
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24) // Adjust size as needed
                Text(item)
            }
            .padding()
        }
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
