import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun RecipeSheet(
    modifier: Modifier = Modifier,
) {
    MaterialTheme(typography = MyTypography) {
        Column(
            modifier = modifier.background(basilBackground).fillMaxHeight()
        ) {
            RecipeIngredients()
        }
    }
}

data class Ingredient(val name: String, val amount: String)


@Composable
fun RecipeIngredients(
    modifier: Modifier = Modifier,
) {
    val ingredients = listOf(
        Ingredient("Basil", "6 tbsp"),
        Ingredient("Gluten-free spaghetti", "2 cups"),
        Ingredient("Garlic", "1 tbsp"),
        Ingredient("Ricotta", "4 cups"),
        Ingredient("Kale", "3 cups"),
        Ingredient("Red Pepper Flakes", "1 tbsp"),
        Ingredient("Extra Virgin Olive Oil", "1 tbsp"),
        Ingredient("Salt", "1 tbsp"),
        Ingredient("Pine Nuts", "2 tbsp"),
    )

    Column {
        for (ingredient in ingredients) {
            Row(
                Modifier
                    .padding(start = 8.dp, top = 16.dp, end = 8.dp, bottom = 16.dp)
            ) {
                Spacer(Modifier.width(16.dp))
                // TODO: Add icon
                Text(
                    ingredient.name,
                    modifier = Modifier.weight(1f),
                    style = MaterialTheme.typography.subtitle1
                )
                Spacer(Modifier.width(16.dp))
                Text(
                    ingredient.amount,
                    style = MaterialTheme.typography.subtitle1
                )
                Spacer(Modifier.width(16.dp))
            }
        }
    }
}