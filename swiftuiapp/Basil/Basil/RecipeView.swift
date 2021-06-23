
import SwiftUI

struct RecipeView: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 32)
            ZStack {
                RecipeDetailsView()
                RecipeNameView()
            }
            Spacer()
        }
        // TODO: Add BottomSheet.
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
