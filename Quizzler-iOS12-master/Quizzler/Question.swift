//
//  Question.swift
//  Quizzler
//
//  Created by Scott Wagner on 2018-12-08.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool ) {
        questionText = text
        answer = correctAnswer
    }
    
}
