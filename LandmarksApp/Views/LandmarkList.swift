//
//  LandmarkList.swift
//  LandmarksApp
//
//  Created by Vin on 12/03/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List (landmarks) { lData in
                NavigationLink {
                    LandmarkDetail(landmark: lData)
                } label: {
                    LandmarkRow(landmark: lData)                    
                }
            }
                .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
