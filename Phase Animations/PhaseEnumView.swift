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
// outside current struct

enum myAnimationPhase: CaseIterable {
    case beginning, middle, end
    
    var myOpacity: Double {
        switch self {
            
        case .beginning: 1.0
        case .middle: 0.3
        case .end: 1.0
        }
    }
    
    var myScale: Double {
        switch self {
        case .beginning, .end : 0.75
        case .middle: 1.3
       
        }
    }
    // time for each phase of animation 
    var myAnimation : Animation {
        switch self {
        case .beginning, .end : .bouncy(duration: 0.4, extraBounce: 0.3)
        case .middle : .easeInOut(duration: 1.5)
        }
    }
}

struct PhaseEnumView: View {
// DATA:

    var body: some View {
// someView
        
        NavigationStack {
            Form{
                Section{
                    Text("Example 1").font(.caption)
                    Image(systemName: "heart.fill")
                        .font(.system(size: 100))
                        .foregroundStyle(.orange)
                        .phaseAnimator(myAnimationPhase.allCases) { content, phase in
                              content
                                .opacity(phase.myOpacity)
                                .scaleEffect(phase.myScale)
                        } animation: { phase in
                            phase.myAnimation
                        }
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
        } //end NavStack
        
    } // end someView
    //METHODS:
    
}

#Preview {
    PhaseEnumView()
}
