//
//  HidingAndGroupingAccessibilityData.swift
//  Accessibility-Learning
//
//  Created by Takasur Azeem on 22/07/2022.
//

import SwiftUI

struct HidingAccessibilityData: View {
    var body: some View {
        Image(decorative: "aimee-giles-MLvCvS5eX-Y-unsplash")
            .resizable()
            .scaledToFit()
            .accessibilityHidden(true)
            // ^ The image becomes invisible to
            // VoiceOver regardless of what traits it has.
    }
}

struct HidingAndGroupingAccessibilityData_Previews: PreviewProvider {
    static var previews: some View {
        HidingAccessibilityData()
    }
}
