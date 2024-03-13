//
//  LandmarkDetail.swift
//  LandmarksApp
//
//  Created by Vin on 12/03/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack() {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading, spacing: 16) {
                    VStack(alignment: .leading) {
                        Text(landmark.name)
                            .font(.title)
                            .bold()
                        HStack {
                            Text(landmark.park)
                            Spacer()
                            Text(landmark.state)
                        }
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("About \(landmark.name)")
                            .font(.title2)
                            .bold()
                        Text(landmark.description)
                    }
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle(landmark.name)
        }
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
