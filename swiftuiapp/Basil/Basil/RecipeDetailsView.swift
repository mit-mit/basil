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
                .frame(height: 8)
            
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
                .frame(height: 60)
            Divider()
                .frame(height: 1)
                .background(Color.basilGreen)
            Text("Guilt-free gluten-free spaghetti pasta is sauted in garlic, and pesto. It's a easy and healthy dinner.")
                .padding(16)
                .multilineTextAlignment(.center)
                .basilStyle(.subtitle1)
            // TODO: Should be overriding the line height to 1.5x
            // but not sure how to do that.
        }
        .background(Color.basilLightGreen)
    }
}


struct RecipeNutrientsView: View {
    var body: some View {
        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ ) {
            Spacer()
            VStack {
                Text("Calories")
                    .basilStyle(.subtitle2)
                Text("465g")
                    .basilStyle(.subtitle1)
                
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8))
            Divider().frame(width: 1)
            VStack {
                Text("Protein")
                    .basilStyle(.subtitle2)
                Text("27g")
                    .basilStyle(.subtitle1)
            }
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
            Divider().frame(width: 1)
            VStack {
                Text("Fat")
                    .basilStyle(.subtitle2)
                Text("125g")
                    .basilStyle(.subtitle1)
            }
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
            Spacer()
        }
        .frame(height: 64)
    }
}

struct RecipeAllergensView: View {
    var body: some View {
        HStack {
            Image("no-gluten")
            Spacer()
                .frame(width: 4)
            Text("Gluten-free")
                .basilStyle(.subtitle1)
            Image("no-egg")
            Spacer()
                .frame(width: 4)
            Text("Egg-free")
                .basilStyle(.subtitle1)
        }
    }
}


struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipeDetailsView()
            RecipeDetailsView()
        }
    }
}
