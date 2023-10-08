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

struct PhaseWithTriggerView: View {
    
    var body: some View {
        NavigationStack {
            Image(systemName: "star")
                .font(.system(size: 40))
                .foregroundColor(.yellow)
                .navigationTitle("Phase Trigger")
        }
    }
}

#Preview {
    PhaseWithTriggerView()
}
