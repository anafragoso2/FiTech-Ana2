//
//  gameManager.swift
//  financeEducation
//
//  Created by ana fragoso on 21/07/24.
//

import Foundation

class gameManager{
    
}

extension gameManager{
    static var quizData: [Pregunta] {
        var questions = [
            Pregunta(pregunta: "¿Qué es un presupuesto?", respuestas: ["Un riesgo de ingresos", "Una cuenta de ahorros", "Un tipo de inversión", "Un plan para gastar dinero"],
                     respuestaCorrecta: "Un plan para gastar dinero"),
            
            Pregunta(pregunta: "¿Cuál es la mejor manera de evitar el sobre endeudamiento?", respuestas: ["Usar el crédito de forma responsable", "Pedir préstamos", "Pagar solo el mínimo en tarjetas de crédito", "Aprovechar los gastos diferidos a meses sin intereses"], respuestaCorrecta: "Usar el crédito de forma responsable"),
            
            Pregunta(pregunta: "¿Qué es una tasa de interés?", respuestas: ["La cantidad de dinero en una cuenta","El costo de pedir dinero prestado", "Un tipo de seguro", "Un gasto mensual"], respuestaCorrecta: "El costo de pedir dinero prestado"),
            
            Pregunta(pregunta: "¿Qué significa diversificación en inversiones?", respuestas: ["Poner todo el dinero en una sola acción", "Gastar más de lo que se gana", "Ahorrar todo el dinero en efectivo", "Invertir en diferentes activos"], respuestaCorrecta: "Invertir en diferentes activos"),
            
            Pregunta(pregunta: "¿Cuál es el propósito de un fondo de emergencia", respuestas: ["Poder comprar bienes para el futuro", "Cubrir gastos inesperados", "Afectar lo menos posible los gastos diarios", "Invertir en un fideicomiso para el futuro"] , respuestaCorrecta:"Cubrir gastos inesperados"),
            
            Pregunta(pregunta:"¿Qué tipo de cuenta suele ofrecer mayor interés?", respuestas: ["Un préstamo para comprar una casa", "Un tipo de seguro", "Una inversión en el mercado de valores", "Un gasto mensual en comida"], respuestaCorrecta: "Un préstamo para comprar una casa"),
            
            Pregunta(pregunta: "¿Qué es un puntaje crediticio?", respuestas: ["Una cuenta bancaria", "Un gasto en educación", "Una medida de la capacidad de pagar deudas", "Un tipo de inversión"], respuestaCorrecta: "Una medida de la capacidad de pagar deudas"),
            
            Pregunta(pregunta: "¿Cuál es la mejor estrategia para la educación universitaria?", respuestas: ["Acudir a una escuela pública", "Pedir un préstamo personal", "Usar tarjeta de crédito de forma temprana", "Abrir una cuenta de ahorro"], respuestaCorrecta: "Abrir una cuenta de ahorro"),
            
            Pregunta(pregunta: "¿Qué es el interés compuesto?", respuestas: ["Un tipo de cuenta de corriente", "Intereses sobre el capital inicial y los intereses acumulados", "Los intereses de múltiples inversiones"], respuestaCorrecta: "Intereses sobre el capital inicial y los intereses acumulados"),
            
            Pregunta(pregunta: "¿Qué es un gasto fijo?", respuestas: ["Un gasto que mes con mes se mantiene constante", "Un ingreso adicional a tu cuenta", "Un gasto que parece insignificante en el presente e impacta significativamente en el futuro", "Un gasto que puede cambiar dependendiendo las circunstancias financieras"], respuestaCorrecta: "Un gasto que mes con mes se mantiene constante")
            
            
        ]
        questions.shuffle() // Baraja las preguntas
        return questions
    }
}
