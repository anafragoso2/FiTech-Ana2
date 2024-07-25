//
//  progressBarComponent.swift
//  financeEducation
//
//  Created by ana fragoso on 22/07/24.
//

import SwiftUI

struct progressBarComponent: View {
    var progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color(hue:1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: progress, height: 4)
                .foregroundColor(CustomColors.myDarkBlue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    progressBarComponent(progress: 350)
}
