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
    
    func randomString(text: String) -> String {
        let letters: NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let len = UInt32(letters.length)
        var randomString = ""
        
        for _ in 0...text.count {
            let random = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(random))
            
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        
        return randomString
    }
    
    func process(_ answer: String, text: String) -> String {
        guard let answerInt = Int(answer) else {
            return "Error"
        }
        
        if text.components(separatedBy: .whitespaces).count > 1 {
            return "Please, just enter a sentence."
        } else {
//            while sentence == text {
            newGeneration.removeAll()
                for i in 0...text.count {
                    newGeneration[i] += randomString(text: text)
                }
            print(newGeneration)
//            }
            
            return text
        }
    }
    
    func start() {
        print("Welcome to Evolutionary Text!")
        
        var text = ""
        print("Please enter a sentence: ", terminator: "")
        
        if let answer = answerFunction() {
            let response = process(answer, text: text)
            print(response)
        }
    }
}

let game = EvolutionaryText()
game.start()
