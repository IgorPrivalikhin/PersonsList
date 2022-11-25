//
//  File.swift
//  PersonsList
//
//  Created by Анастасия Булдакова on 22.11.2022.
//

import Foundation



class DataStore {
    
    static let shared = DataStore()
   


       let namesArray = ["Egor", "Sergey", "Andrey", "Igor", "Matvey", "Eugeny"]
    
        let surnamesArray = ["Petrov", "Zaytcev", "Borisov", "Popoff", "Sokoloff", "Egoroff"]
    
        let emailArray = ["ivanov@mail.ru", "zaytcev@mail.ru", "borisov@mail.ru", "abcdef@mail.ru", "qwerty@mail.ru", "did@mail.ru"]
    
        let telNumberArray = ["89994563782", "89114564933", "89319997644", "89216766631", "89115676004", "89658764532"]
    
    private init() {}
}

/*
 
 class DataStore {
     
     static let shared = DataStore()
     
     let names = [
         "John", "Aaron", "Tim", "Ted",
         "Steven", "Sharon", "Nicola",
         "Allan", "Bruce", "Carl"
     ]
     
     let surnames = [
         "Smith", "Dow", "Isaacson", "Pennyworth",
         "Jankin", "Butler", "Black", "Robertson",
         "Murphy", "Williams"
     ]
     
     let emails = [
         "jjjj@mail.ru", "aaaa@mail.ru", "eeee@mail.ru",
         "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru",
         "xxxx@mail.ru", "pppp@mail.ru", "ssss@mail.ru",
         "llll@mail.ru"
     ]
     
     let phones = [
         "745396026", "145036843", "287185656", "293520954",
         "562880225", "738594072", "825654134", "645898473",
         "432349845", "459477625"
     ]
     
     private init() {}
 }

 */
