//
//  TeamView.swift
//  PracticeMVVM
//
//  Created by 森祐樹 on 2022/10/22.
//

import SwiftUI

struct TeamView: View {
    @ObservedObject var viewModel = BaseballPlayerViewModel()
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView() {
                HStack(alignment: .top, spacing: 80) {
                    startingMemberView(array: viewModel.team)
                    reserveMemberView(array: viewModel.team)
                }
            }
            Menu("Menu".uppercased()) {
                Button("Reverse", action: { viewModel.reverseOrder()})
                Button("Shuffle", action: { viewModel.shuffleOrder()})
                Button("Remove last", action: { viewModel.removeLastPerson()})
                Button("Remove First", action: { viewModel.removeFirstPerson()})
                Button("Reset", action: {viewModel.addteam()})
            }
        }
    }
}

@ViewBuilder
private func startingMemberView(array: [BaseballPlayer]) -> some View {
    VStack {
        Text("スタメン")
        ForEach(Array(array.enumerated()), id: \.element.id) { index, player in
            if (index < 9) {
                HStack(spacing: 20) {
                    Text("\(index+1)")
                    Text(player.name)
                        .font(.title)
                        .fontWeight(.bold)
                    Text(player.position)
                }
                .frame(height: 40)
                .padding()
            }
                
        }
    }
}

@ViewBuilder
private func reserveMemberView(array: [BaseballPlayer]) -> some View {
    VStack {
        Text("控え選手")
        ForEach(Array(array.enumerated()), id: \.element.id) { index, player in
            if (index > 8) {
                HStack {
                    Text(player.name)
                    Text(player.position)
                }
                .padding()
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
