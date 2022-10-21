//
//  PersonViewModel.swift
//  PracticeMVVM
//
//  Created by 森祐樹 on 2022/10/21.
//

import SwiftUI

class PersonViewModel: ObservableObject {
    @Published var people: [Person] = []
    
    init() {
        addPeople()
    }
    
    func addPeople() {
        people = peopleData
    }
    
    func shuffleOrder() {
        people.shuffle()
    }
    
    func reverseOrder() {
        people.reverse()
    }
    
    func removeLastPerson() {
        people.removeLast()
    }
    
    func removeFirstPerson() {
        people.removeFirst()
    }
}

let peopleData = [
    Person(name: "田中", email: "Tanaka@email.com", phoneNumber: "555-5555"),
    Person(name: "佐藤", email: "Sato@email.com", phoneNumber: "555-5555"),
    Person(name: "斉藤", email: "Saito@email.com", phoneNumber: "555-5555"),
    Person(name: "鈴木", email: "Suzuki@email.com", phoneNumber: "555-5555"),
    Person(name: "松本", email: "Matsumoto@email.com", phoneNumber: "555-5555")
]
