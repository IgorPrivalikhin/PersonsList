//
//  Contact.swift
//  PersonsList
//
//  Created by Анастасия Булдакова on 22.11.2022.
//

struct Person {
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    var fullName: String{
        "\(name) \(surname)"
    }
}

extension Person {
    static func getList() -> [Person] {
        var names = DataStore.shared.namesArray
        var surnames = DataStore.shared.surnamesArray
        var emails = DataStore.shared.emailArray
        var telNumbers = DataStore.shared.telNumberArray
        
        var persons: [Person] = []
        
        for _ in 1...names.count {
            var nameValue = ""
            var surnameValue = ""
            var emailValue = ""
            var phoneValue = ""
            
            if let indexNames = names.indices.randomElement() {
                nameValue = names.remove(at: indexNames)
            }
            if let indexSurnames = surnames.indices.randomElement() {
                surnameValue = surnames.remove(at: indexSurnames)
            }
            if let indexEmail = emails.indices.randomElement() {
                emailValue = emails.remove(at: indexEmail)
            }
            if let indexPhones = telNumbers.indices.randomElement() {
                phoneValue = telNumbers.remove(at: indexPhones)
            }

            persons.append(Person(name: nameValue, surname: surnameValue, email:  emailValue, phone: phoneValue))
        }
        return persons
    }
}
                
        
