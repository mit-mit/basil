//
//  RecipeNameView.swift
//  Basil
//
//  Created by Michael Thomsen on 23/06/2021.
//

import SwiftUI

struct RecipeNameView: View {
    var body: some View {
        VStack {
            Text("Creamy Pesto Pasta")
                .foregroundColor(Color.basilOrange)
                .basilStyle(.headline3)
                .multilineTextAlignment(.center)
            Spacer()
        }
    }
}

struct RecipeNameView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeNameView()
    }
}
