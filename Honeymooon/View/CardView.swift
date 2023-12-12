//
//  CardView.swift
//  Honeymooon
//
//  Created by Lexter Tapawan on 12/12/2023.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    let id = UUID()
    var honeymoon: Destination
    
    // MARK: - BODY
    
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .scaledToFit()
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 12) {
                    Text(honeymoon.place.uppercased())
                        .foregroundStyle(Color.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .overlay(
                        Rectangle()
                            .fill(Color.white)
                            .frame(height: 1),
                        alignment: .bottom
                        )
                    Text(honeymoon.country.uppercased())
                        .foregroundStyle(Color.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(
                            Capsule().fill(Color.white)
                        )
                } //: VSTACK
                    .frame(minWidth: 280)
                    .padding(.bottom, 50),
                alignment: .bottom
            )
    }
}

// MARK: - PREVIEW

#Preview {
    CardView(honeymoon: honeymoonData[1])
}
