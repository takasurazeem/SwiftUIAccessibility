//
//  IdentifyingViews.swift
//  Accessibility-Learning
//
//  Created by Takasur Azeem on 15/07/2022.
//

import SwiftUI

struct IdentifyingViews: View {
    
    let pictures = [
        "marek-piwnicki-y-VhDt6KsKg-unsplash",
        "jasper-gribble-TgQUt4fz9s8-unsplash",
        "aimee-giles-MLvCvS5eX-Y-unsplash",
        "kevin-staub-P4N_vBE8sVI-unsplash"
    ]
    
    let labels = [
        "Madonna di Campiglio, Autonomous Province of Trento, Italy",
        "Snow covered mountains behind river",
        "Blossoms",
        "Snow and trees",
    ]
    
    @State private var selectedPicture = Int.random(in: 0...3)
    
    var body: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .scaledToFit()
            .accessibilityLabel(labels[selectedPicture])
            .accessibilityHint("Tapping on it will change picture randomly, might stay the same.")
            .accessibilityAddTraits(.isButton)
            .accessibilityRemoveTraits(.isImage)
            .onTapGesture {
                selectedPicture = Int.random(in: 0...3)
            }
    }
}

struct IdentifyingViews_Previews: PreviewProvider {
    static var previews: some View {
        IdentifyingViews()
    }
}
