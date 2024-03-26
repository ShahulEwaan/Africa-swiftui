//
//  CoverImageView.swift
//  Africa Map
//
//  Created by SHAHUL HAMEED on 19/03/24.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages)  { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//:LOOP
        }//:TAB
        .tabViewStyle(.page)
        .background(.black)
    }
}

#Preview {
    CoverImageView()
        .frame(height: 300)
}
