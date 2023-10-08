//
// Created for Phase Animations
// by  Stewart Lynch on 2023-08-15
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct PhaseEnumView: View {
    var body: some View {
        NavigationStack {
            Form{
                Section{
                    Text("Example 1").font(.caption)
                    Image(systemName: "heart.fill")
                        .font(.system(size: 100))
                        .foregroundStyle(.red)
                        .centered(150)
                }
                Section {
                    Text("Example 2").font(.caption)
                    Image(systemName: "timelapse")
                        .foregroundStyle(.blue)
                        .frame(height: 100)
                        .centered()
                }
            }
            .navigationTitle("Animation Phases")
        }
    }
}

#Preview {
    PhaseEnumView()
}
