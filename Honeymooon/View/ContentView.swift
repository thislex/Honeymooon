//
//  ContentView.swift
//  Honeymooon
//
//  Created by Lexter Tapawan on 12/12/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[3])
                .padding()
            
            Spacer()
            
            FooterView()
        }
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
