//
//  QuizzBrain.swift
//  quizz
//
//  Created by David Acevedo on 10/10/22.
//

import Foundation



struct QuizBrain {
    let quiz = [
        Quizz(text:"2 + 2 = 4", answer: "True"),
        Quizz(text:"3 * 3 = 9", answer: "False"),
        Quizz(text:"Five - Three is greater than One", answer: "False"),
    ]
    
    var questionNumber = 0
    
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        let answer = self.getQuizText()
        return answer == userAnswer
    }
    
    mutating func nextQuestion() {
        if self.questionNumber + 1 < self.quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    func getQuizText() -> String {
        return quiz[self.questionNumber].text
    }
}
