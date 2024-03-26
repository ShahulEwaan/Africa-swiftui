//
//  AnimalListView.swift
//  Africa Map
//
//  Created by SHAHUL HAMEED on 19/03/24.
//

import SwiftUI

struct AnimalListView: View {
    // MARK:  -Properties
    let animal: Animal
    // MARK: Body
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8){
                Text(animal.name)
                    .fontWeight(.heavy)
                    .font(.title)
                    .foregroundStyle(.accent)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
     return AnimalListView(animal: animals[1])
}
