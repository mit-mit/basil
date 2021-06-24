import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun RecipeMain(
    modifier: Modifier = Modifier,
) {
    MaterialTheme(typography = MyTypography) {

        Column(
            modifier = modifier.background(basilBackground)
        ) {
            Spacer(Modifier.height(32.dp))
            Box {
                RecipeDetails()
                RecipeName()
            }
        }
    }
}

// Mobile layout: Has the main widget and the ingredients in a bottom sheet.
@Composable
fun RecipeNarrowWidget() {
    RecipeMain()
    // TODO: Implement the Bottom Sheet.
}

// Desktop layout: Has the main widget on the left and and the ingredients on the right.
@Composable
fun RecipeWideWidget() {
    Scaffold(
    )
    {
        Row(
            modifier = Modifier.fillMaxWidth()
        ) {
            RecipeMain(
                modifier = Modifier.weight(1f)
            )
            RecipeSheet(
                modifier = Modifier.weight(1f)
            )
        }
    }
}

@Composable
fun Recipe() {
    RecipeWideWidget()
}
