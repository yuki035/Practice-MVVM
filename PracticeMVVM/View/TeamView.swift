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
                ForEach(Array(viewModel.team.enumerated()), id: \.element.id) { index, player in
                    HStack {
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

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
