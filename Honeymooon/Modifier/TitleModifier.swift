//
//  TitleModifier.swift
//  Honeymooon
//
//  Created by Lexter Tapawan on 13/12/2023.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(Color.pink)
    }
}
