//
//  ContentView.swift
//  Africa Map
//
//  Created by SHAHUL HAMEED on 18/03/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    let animals: [Animal] = Bundle.main.decode("animals.json")
    // MARK: - Body
    var body: some View {
        NavigationStack{
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    AnimalListView(animal: animal)
                }
                    
            }
            .listStyle(.plain)
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large )
        }
    }
}

#Preview {
    ContentView()
        .previewDevice("iPhone 15 Pro")
}
