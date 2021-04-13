//
//  Person.swift
//  RandomPersonsApp
//
//  Created by Nikita on 11.04.2021.
//

import Foundation

struct Person {
    var firstName: String
    var lastName: String
    var eMails: String
    var numbers: String
    
    static func createPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let eMails = DataManager.shared.eMails.shuffled()
        let numbers = DataManager.shared.numbers.shuffled()
        
        for index in 0 ..< firstNames.count {
            
            let person = Person(firstName: firstNames[index],
                                lastName: lastNames[index],
                                eMails: eMails[index],
                                numbers: numbers[index])
            
            persons.append(person)
        }
        return persons 
    }
}
