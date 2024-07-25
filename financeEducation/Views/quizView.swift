//
//  quizView.swift
//  financeEducation
//
//  Created by ana fragoso on 21/07/24.
//

import SwiftUI


struct quizView: View {
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswer: String? = nil
    @State private var correctAnswer: String? = nil
    
    private let questions = gameManager.quizData
    
    private var shuffledAnswers: [String] {
            currentQuestion.respuestas.shuffled()
        }
    
    private var currentQuestion: Pregunta {
        questions[currentQuestionIndex]
    }
    
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Educación Financiera")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(CustomColors.myDarkBlue)
                
                Spacer()
                
                Text("\(currentQuestionIndex + 1) de \(questions.count)")
                    .foregroundColor(CustomColors.myDarkBlue)
                    .fontWeight(.heavy)
            }
            
            progressBarComponent(progress: CGFloat(currentQuestionIndex + 1) / CGFloat(questions.count) * 100)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(currentQuestion.pregunta)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(CustomColors.myDarkGrey)
                
                ForEach(currentQuestion.respuestas, id: \.self) { answer in
                    AnswerRow(answerText: answer, isCorrect: answer == currentQuestion.respuestaCorrecta, selectedAnswer: $selectedAnswer)
                }
            }
            
            primaryButton(text: "Siguiente") {
                // Lógica para verificar si la respuesta seleccionada es correcta
                if selectedAnswer == currentQuestion.respuestaCorrecta {
                    correctAnswer = selectedAnswer
                } else {
                    correctAnswer = nil
                }
                
                // Avanzar a la siguiente pregunta
                if currentQuestionIndex < questions.count - 1 {
                    currentQuestionIndex += 1
                    selectedAnswer = nil
                } else {
                    // Aquí puedes manejar el final del cuestionario
                    finishQuiz()
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColors.myLightBlue)
        .navigationBarHidden(true)
    }
    
    private func calculateProgress() -> CGFloat {
        let totalQuestions = CGFloat(questions.count)
        let currentProgress = CGFloat(currentQuestionIndex + 1) / totalQuestions
        return currentProgress
    }    
    
    // ****
    private var buttonText: String {
            // Determina el texto del botón basado en si es la última pregunta
            if currentQuestionIndex == questions.count - 1 {
                return "Finalizar"
            } else {
                return "Siguiente"
            }
        }
    
    private func finishQuiz() {
            // Lógica para manejar el final del cuestionario
            // Por ejemplo, puedes mostrar una vista de resultados aquí
           // print("Cuestionario finalizado")
        }
  
    
    private func primaryButton(text: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text(text)
                .font(.headline)
                .padding()
                .background(CustomColors.myDarkBlue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    quizView()
}
