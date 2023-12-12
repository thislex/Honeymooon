//
//  HeaderComponent.swift
//  Honeymooon
//
//  Created by Lexter Tapawan on 12/12/2023.
//

import SwiftUI

struct HeaderComponent: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundStyle(Color.secondary)
                .opacity(0.2)
            
            Image("logo-honeymoon")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
        }
    }
}

// MARK: - PREVIEW

#Preview(traits: .fixedLayout(width: 375, height: 128)) {
    HeaderComponent()
}
