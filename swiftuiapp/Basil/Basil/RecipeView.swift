
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
        .background(Color.basilBackground)
        // TODO: Add BottomSheet.
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
