//
// Created for Phase Animations
// by  Stewart Lynch on 2023-08-15
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
// student : @yannemal SUN 8-OCT23

import SwiftUI

struct Basic: View {
    // MARK: - DATA:
    @State private var isDone = false
    
    var body: some View {
    // MARK: - someVIEW:
        
        NavigationStack{
            Form {
                Section("Animation with Completion") {
                    Text("iOS 17 Completion Block")
                    Image(systemName: isDone ? "checkmark.square" : "square")
                        .font(.system(size: 60))
                        .centered()
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.25)) {
                                isDone.toggle()
                            }
                        }
                }
                Section("Basic Phase Animation") {
                    Text("No action taken by user - Continuous").font(.caption)
                    HStack {
                        Image(systemName: "hand.thumbsup.fill")
                            .font(.system(size: 60))
                        Text("Hello World")
                            .bold()
                            .padding()
                            .foregroundStyle(.red)
                            .border(.red)
                    }
                    .centered()
                }
            }
            .navigationTitle("Basics")
        } //end Stack
    } //end someView
} // endStruct


#Preview {
    Basic()
}
