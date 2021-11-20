//
//  FlagGameHeaderView.swift
//  GuessTheFlag
//
//  Created by Marcus Ziadé on 20.11.2021.
//  Copyright © 2021 Marcus Ziadé. All rights reserved.
//

import SwiftUI

struct FlagGameHeaderView: View {
    
    let answer: String
    let score: Int
    let level: Int
    
    var body: some View {
        VStack {
            Text("Tap the flag of")
            
            Text(answer)
                .font(.headline)
                .fontWeight(.black)
            HStack(alignment: .bottom) {
                Text("Level: \(level)")
                    .modifier(LevelPill())
                    .minimumScaleFactor(0.5)
                
                Spacer()
                
                Text("XP: \(score)")
                    .modifier(ExperiencePill())
                    .minimumScaleFactor(0.5)
            }
            .padding(.horizontal)
        }
    }
}

struct FlagGameHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FlagGameHeaderView(answer: "Finland", score: 30, level: 12)
                .previewLayout(.sizeThatFits)
            FlagGameHeaderView(answer: "Finland", score: 9999, level: 300)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
