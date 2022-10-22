//
//  BaseballPlayerViewModel.swift
//  PracticeMVVM
//
//  Created by 森祐樹 on 2022/10/22.
//

import SwiftUI

class BaseballPlayerViewModel: ObservableObject {
    @Published var team: [BaseballPlayer] = []
    
    init() {
        addteam()
    }
    
    func addteam() {
        team = teamData
    }
    
    func shuffleOrder() {
        team.shuffle()
    }
    
    func reverseOrder() {
        team.reverse()
    }
    
    func removeLastPerson() {
        team.removeLast()
    }
    
    func removeFirstPerson() {
        team.removeFirst()
    }
}

let teamData = [
    BaseballPlayer(name: "田中", position: "投", battingOrder: 1),
    BaseballPlayer(name: "佐藤", position: "三", battingOrder: 2),
    BaseballPlayer(name: "斉藤", position: "二", battingOrder: 3),
    BaseballPlayer(name: "鈴木", position: "中", battingOrder: 4),
    BaseballPlayer(name: "松本", position: "一", battingOrder: 5),
    BaseballPlayer(name: "高橋", position: "右", battingOrder: 6),
    BaseballPlayer(name: "伊藤", position: "左", battingOrder: 7),
    BaseballPlayer(name: "渡辺", position: "遊", battingOrder: 8),
    BaseballPlayer(name: "古田", position: "捕", battingOrder: 9),
]
