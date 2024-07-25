//
//  answerRow.swift
//  financeEducation
//
//  Created by ana fragoso on 22/07/24.
//

import SwiftUI

struct AnswerRow: View {
    var answerText: String
    var isCorrect: Bool
    @Binding var selectedAnswer: String?
    
    var green = Color(hue:0.437, saturation: 0.711, brightness: 0.711)
    var red = Color(red: 0.71, green: 0.094, blue: 0.1)
    
    var isSelected: Bool {
        selectedAnswer == answerText
    }
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answerText)
                .font(.title3)
                .bold()
            
            if isSelected {
                Spacer()
                
                Image(systemName: isCorrect ? "checkmark.circle.fill" : "xmark.circle.fill")
                    .foregroundColor(isCorrect ? green : red)
                    .shadow(radius: 30)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(isSelected ? Color(CustomColors.myDarkBlue) : CustomColors.myDarkGrey)
        .background(.white)
       .cornerRadius(5)
        .shadow(color: isSelected ? (isCorrect ? green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            selectedAnswer = answerText
        }
    }
}

#Preview {
    AnswerRow(answerText: "Sample Answer", isCorrect: false, selectedAnswer: .constant(nil))
}
