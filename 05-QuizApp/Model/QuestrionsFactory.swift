//
//  QuestrionsFactory.swift
//  05-QuizApp
//
//  Created by Romina Pozzuto on 25/09/2020.
//  Copyright © 2020 Romina Pozzuto. All rights reserved.
//

import Foundation

class QuestrionsFactory {
    
    var questionsBank: QuestionsBank!
    
    init() {
/// Proceso manual PLIST
/*
       guard let path = Bundle.main.path(forResource: "QuestionsBank", ofType: "plist") else {return}
        guard let plist = NSDictionary(contentsOfFile: path) else {return}
        guard let questionData = plist["questions"] as? [AnyObject] else {return}
        
        for question in questionData {
            let text = question["question"]
            let answer = question["answer"]
            let explanation = question["explanation"]
            
            if (text != nil), (answer != nil), (explanation != nil) {
                questions.append(QuestionModel(text: text as! String, answer: answer as! Bool), explanation: explanation as! String)
            }
            
        }
        print(plist)
 */
        
/// Proceso automático CON CODABLE
        
        do {
            if let url = Bundle.main.url(forResource: "QuestionsBank", withExtension: "plist") {
                let data = try Data(contentsOf: url)
                self.questionsBank = try PropertyListDecoder().decode(QuestionsBank.self, from: data)
            }
            
        } catch{
            print(error)
        }
        
    }
    
    func getQuestionsAt(index: Int) -> QuestionModel? {

        if index < 0 || index >= questionsBank.questions.count {
            return nil
        } else {
            return questionsBank.questions[index]
        }
    }

    func getRandomQuestion() -> QuestionModel {
        let index = Int(arc4random_uniform(UInt32(self.questionsBank.questions.count)))
        return questionsBank.questions[Int(index)]
    }

    
    
//    func questionsAppend() {
//        questions.append(QuestionModel(text: "El Vaticano tiene la cantidad de dinero suficiente para acabar con la pobreza mundial dos veces", answer: true))
//
//        questions.append(QuestionModel(text: "El caballito de mar es tan fiel a su pareja, que cuando uno muere, el otro también lo hace al poco tiempo", answer: true))
//
//        questions.append(QuestionModel(text: "Los humanos son los únicos seres vivos que practican el sexo por placer", answer: false))
//
//        questions.append(QuestionModel(text: "La semilla de la manzana contiene cianuro y es tóxica", answer: true))
//
//        questions.append(QuestionModel(text: "Se puede afeitar el bigote a un gato sin ningún problema", answer: false))
//
//        questions.append(QuestionModel(text: "Un Koala necesita beber al menos una vez al día", answer: false))
//
//        questions.append(QuestionModel(text: "Edison, el inventor de la bombilla, temía a la oscuridad", answer: true))
//
//        questions.append(QuestionModel(text: "Los escorpiones son los únicos animales que se suicidan cuando no pueden escapar de una situación de peligro", answer: true))
//
//        questions.append(QuestionModel(text: "Los ojos de un hamster se pueden caer si se le cuelga cabeza abajo", answer: true))
//
//        questions.append(QuestionModel(text: "Si divides el número de abejas hembra entre el de abejas macho de un panal, se obtiene el número de oro", answer: false))
//
//        questions.append(QuestionModel(text: "Las pameras nacieron por primera vez en el polo norte", answer: true))
//
//        questions.append(QuestionModel(text: "Cervantes y Shakespeare murieron el mismo día", answer: true))
//
//        questions.append(QuestionModel(text: "Los mosquitos tienen dientes", answer: true))
//
//        questions.append(QuestionModel(text: "Los ojos humanos son de diferente tamaño", answer: false))
//
//        questions.append(QuestionModel(text: "Una gota de petróleo puede convertir 25L de agua potable en no potable", answer: true))
//
//        questions.append(QuestionModel(text: "Los osos polares son zurdos", answer: true))
//
//        questions.append(QuestionModel(text: "Un metro cuadrado de césped produce suficiente oxigeno para una persona por todo el año", answer: true))
//
//        questions.append(QuestionModel(text: "El yoyo primero se uso como arma en Asia", answer: true))
//
//        questions.append(QuestionModel(text: "La base de la Gran Pirámide de Egipto equivale en tamaño a 10 campos de fútbol", answer: true))
//
//        questions.append(QuestionModel(text: "Cada vez que Beethoven se sentaba a escribir música, se ponía agua fría sobre la cabeza", answer: true))
//
//        questions.append(QuestionModel(text: "Camboya es muy hermosa", answer: true))
//
//    }
    
    
    
}
