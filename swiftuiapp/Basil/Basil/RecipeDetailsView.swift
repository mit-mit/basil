//
//  RecipeDetailsView.swift
//  Basil
//
//  Created by Michael Thomsen on 23/06/2021.
//

import SwiftUI

struct RecipeDetailsView: View {
    var body: some View {
        VStack {
            
            // Description.
            RecipeDescriptionView()
            Spacer()
                .frame(height: 16)
            
            // Nutrients.
            RecipeNutrientsView()
            Divider()
                .padding(8.0)
                .frame(height: 1)
                .background(Color.basilGreen)
            
            // Allergens.
            RecipeAllergensView()
            
            // Take up the rest of the vertical space.
            Spacer()
        }
        .padding(EdgeInsets(top: 64, leading: 32, bottom: 0, trailing: 32))
    }
}

struct RecipeDescriptionView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 96)
            Divider()
                .frame(height: 1)
                .background(Color.basilGreen)
            Text("Guilt-free gluten-free spaghetti pasta is sauted in garlic, and pesto. It\"s a easy and healthy dinner.")
                .padding(16)
                .basilStyle(.headline6)
        }
        .background(Color.basilLightGreen)
    }
}


struct RecipeNutrientsView: View {
    var body: some View {
        HStack {
            VStack {
                Text("Calories")
                    .basilStyle(.subtitle2)
                Text("465g")
                    .basilStyle(.subtitle1)

            }
            Divider()
            VStack {
                Text("Protein")
                    .basilStyle(.subtitle2)
                Text("27g")
                    .basilStyle(.subtitle1)
            }
            Divider()
            VStack {
                Text("Fat")
                    .basilStyle(.subtitle2)
                Text("125g")
                    .basilStyle(.subtitle1)
            }
            
        }
        .frame(height: 64, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeAllergensView: View {
    var body: some View {
        HStack {
            Image("no-gluten")
            Text("Gluten-free")
                .basilStyle(.subtitle1)
            Image("no-egg")
            Text("Egg-free")
                .basilStyle(.subtitle1)
        }
    }
}


struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView()
    }
}
