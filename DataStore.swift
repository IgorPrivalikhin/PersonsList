//
//  File.swift
//  PersonsList
//
//  Created by Анастасия Булдакова on 22.11.2022.
//

import Foundation



class DataStore {
   
    var namesArray = [String] ()
    var surnamesArray = [String] ()
    var emailArray = [String] ()
    var telNumberArray = [String] ()

    init(namesArray: [String], surnamesArray: [String], emailArray: [String], telNumberArray: [String]) {
          self.namesArray = namesArray
          self.surnamesArray = surnamesArray
          self.emailArray = emailArray
          self.telNumberArray = telNumberArray
      }

    
static let shared = DataStore(
        namesArray: ["Egor", "Sergey", "Andrey", "Igor", "Matvey", "Eugeny"],
        surnamesArray: ["Petrov", "Zaytcev", "Borisov", "Popoff", "Sokoloff", "Egoroff"],
        emailArray: ["ivanov@mail.ru", "zaytcev@mail.ru", "borisov@mail.ru", "abcdef@mail.ru", "qwerty@mail.ru", "did@mail.ru"],
        telNumberArray: ["89994563782", "89114564933", "89319997644", "89216766631", "89115676004", "89658764532",])
}



/*
 Для хранения данных создайте отдельный класс DataStore. Объявите в классе четыре массива типа String со списками имен, фамилий, имейлов и телефонов.
 DataStore - это сервисный слой для хранения информации. Это нужно для последующей возможности создавать в модели рандомные списки, обращаясь к данным из сервисного слоя.
 DataStore должен располагаться в отдельной директории Services.
 В классе DataStore необходимо объявить свойство  static let shared = DataStore()
 Доступ к массивам из модели будет осуществляться примерно следующим образом:
 let strings = DataStore.shared.strings
 */