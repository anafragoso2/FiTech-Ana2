//
//  primaryButton.swift
//  financeEducation
//
//  Created by ana fragoso on 22/07/24.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color(CustomColors.myDarkBlue)
    var action: () -> Void  // Agregar una acción para el botón
    
    var body: some View {
        Button(action: action) {  // Envuelve el Text en un Button
            Text(text)
                .foregroundColor(.white)
                .bold()
                .padding()
                .padding(.horizontal)
                .background(background)
                .cornerRadius(5)
                .shadow(radius: 10)
        }
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Siguiente", action: {})
    }
}
