//
//  main.swift
//  Evolutionary Text
//
//  Created by Can Balkaya on 3/1/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import Foundation

class EvolutionaryText {
    var newGeneration = [String]()
    var oldGenerations = [[String]]()
    var answerFunction = { readLine() }
    
    func process(text: String) -> String {
        newGeneration = [text, text, text, text, text, text, text]
        return text
    }
    
    func start() {
        print("Welcome to Evolutionary Text!")
        
        var text = ""
        print("Please enter a text: ", terminator: "")
        
        if let answer = answerFunction() {
            let response = process(text: text)
            print(response)
        }
    }
}

let game = EvolutionaryText()
game.start()
