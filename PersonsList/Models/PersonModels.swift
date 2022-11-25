//
//  Contact.swift
//  PersonsList
//
//  Created by Анастасия Булдакова on 22.11.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String{
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.namesArray.shuffled()
        let surnames = DataStore.shared.surnamesArray.shuffled()
        let emails = DataStore.shared.emailArray.shuffled()
        let telNumbers = DataStore.shared.telNumberArray.shuffled()
        
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            telNumbers.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: telNumbers[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}



        /* for _ in 1...names.count {
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
                */
        
