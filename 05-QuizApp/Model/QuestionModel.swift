//
//  QuestionModel.swift
//  05-QuizApp
//
//  Created by Romina Pozzuto on 25/09/2020.
//  Copyright © 2020 Romina Pozzuto. All rights reserved.
//

import Foundation

class QuestionModel: CustomStringConvertible, Codable {

    let question: String
    let answer: Bool
    let explanation: String
    
    var description: String {
        let respuesta = (answer ? "Verdadero" : "Falso")
        return """
        Pregunta:
        -----------------
        - \(question)
        - Respuesta: \(respuesta)
        - Explicación: \(explanation)
        """
    }
    
    init(text: String, answer: Bool, explanation: String) {
        self.question = text
        self.answer = answer
        self.explanation = explanation
    }
}

struct QuestionsBank: Codable {
    var questions: [QuestionModel]
}

