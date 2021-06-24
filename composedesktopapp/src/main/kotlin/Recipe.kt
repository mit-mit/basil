import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun Recipe() {
    MaterialTheme(typography = MyTypography) {
        Scaffold(
        )
        {
            Column(
                Modifier.background(basilBackground)
            ) {
                Spacer(Modifier.height(32.dp))
                Box {
                    RecipeDetails()
                    RecipeName()
                }
            }
            // TODO: Implement the Bottom Sheet.
        }

    }
}


