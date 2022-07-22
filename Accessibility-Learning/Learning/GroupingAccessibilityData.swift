//
//  GroupingAccessibilityData.swift
//  Accessibility-Learning
//
//  Created by Takasur Azeem on 22/07/2022.
//

import SwiftUI

/// It’s worth trying both of these to see how they differ in practice. Using .combine adds a pause between the two pieces of text, because they aren’t necessarily designed to be read together. Using .ignore and a custom label means the text is read all at once, and is much more natural.

/// Tip: .ignore is the default parameter for children, so you can get the same results as
/// `.accessibilityElement(children: .ignore)` just by saying `.accessibilityElement().`
struct GroupingAccessibilityData: View {
    var body: some View {
        VStack {
            Text("Your score is")
            Text("1000")
                .font(.title)
        }
        .accessibilityElement()
        .accessibilityLabel("Your score is 1000")
    }
}

struct GroupingAccessibilityData_Previews: PreviewProvider {
    static var previews: some View {
        GroupingAccessibilityData()
    }
}
