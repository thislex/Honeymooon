//
//  ContentView.swift
//  Honeymooon
//
//  Created by Lexter Tapawan on 12/12/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[3])
                .padding()
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        } //: VSTACK
        .alert("Wishing a lovely and most precious of the times together for the amazing couple.", isPresented: $showAlert) {
            Button("Happy Honeymoon!", role: .cancel) { }
        }
    }
}


// MARK: - PREVIEW

#Preview {
    ContentView()
}
