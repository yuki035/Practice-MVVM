//
//  PeopleView.swift
//  PracticeMVVM
//
//  Created by 森祐樹 on 2022/10/21.
//

import SwiftUI

struct PeopleView: View {
    @ObservedObject var viewModel = PersonViewModel()
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                ForEach(viewModel.people) { person in
                    HStack {
                        Text(person.name)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Text(person.phoneNumber)
                            Text(person.email)
                        }
                    }
                    .frame(height: 80)
                    .padding()
                }
            }
            Menu("Menu".uppercased()) {
                Button("Reverse", action: { viewModel.reverseOrder()})
                Button("Shuffle", action: { viewModel.shuffleOrder()})
                Button("Remove lat", action: { viewModel.removeLastPerson()})
                Button("Remove First", action: { viewModel.removeFirstPerson()})
                Button("Reset Person", action: {viewModel.addPeople()})
            }
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
