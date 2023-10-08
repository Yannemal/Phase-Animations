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
    @State private var scaleIt = false
    
    var body: some View {
    // MARK: - someVIEW:
        
        NavigationStack{
            Form {
                Section("Animation with Completion") {
                    Text("iOS 17 Completion Block")
                    Image(systemName: isDone ? "checkmark.square" : "square")
                        .font(.system(size: 60))
                        .scaleEffect(isDone ? (scaleIt ? 1.35 : 1) : (scaleIt ? 0.75 : 1))
                        .centered()
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.25)) {
                                isDone.toggle()
                                scaleIt.toggle()
                            } completion: {
                                withAnimation(.easeInOut(duration: 0.25)) {
                                    scaleIt.toggle()
                                }
                            }
                        }
                }
                Section("Basic Phase Animation") {
                    Text("No action taken by user - Continuous").font(.caption)
                    HStack {
                        Image(systemName: "hand.thumbsup.fill")
                            .font(.system(size: 60))
                            .phaseAnimator([isDone]) { content, phase in
                                content
                                    .foregroundStyle(phase ? .orange : .black)
                            } animation: { _ in
                                    .smooth(duration: 5.0)
                            }
                        
                            .phaseAnimator([true, false]) { content, phase in
                                content
                                    .scaleEffect(phase ? 0.8 : 1.1)
                                    .rotationEffect(.degrees(phase ? 20 : -60))
                            } animation: { _ in
                                    .easeInOut(duration: 1.05)
                            }
                        Spacer()
                        Text("Hello World")
                            .bold()
                            .padding()
                            .phaseAnimator([1,2,3]) { content, phase in
                                content
                                    .border((phase == 1) ? .indigo : (phase == 2) ? .blue : .green
                                , width: phase == 2 ? 5 : 2)
                                    .offset(x: (phase == 1) ? 170 : (phase == 3) ? -30 : 0)
                            } animation: { phase in
                                switch phase {
                                case 1,2 : .smooth(duration: 1.5)
                                default : .easeIn(duration: 1.0)
                                    
                                    
                                }
                            }
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
