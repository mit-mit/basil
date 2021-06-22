package com.example.composeapp

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material.Divider
import androidx.compose.material.Icon
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp

@Composable
fun RecipeDetails() {
    Column(
        Modifier
            .padding(start = 32.dp, top = 64.dp, end = 32.dp, bottom = 0.dp)
            .fillMaxHeight()
    )
    {
        // Description.
        RecipeDescription()
        Spacer(Modifier.height(32.dp))

        // Nutrients.
        RecipeNutrients()
        Divider(thickness = 1.dp, color = basilGreen, modifier = Modifier.padding(8.dp))

        // Allergens.
        RecipeAllergens()
    }
}

@Composable
fun RecipeAllergens() {
    Row(
        horizontalArrangement = Arrangement.Center,
        verticalAlignment = Alignment.CenterVertically,
        modifier = Modifier.fillMaxWidth()
    ) {
        Icon(
            painter = painterResource(id = R.drawable.no_gluten),
            contentDescription = "No gluten icon"
        )
        Spacer(Modifier.width(16.dp))
        Text(
            text = "Gluten-free",
            style = MaterialTheme.typography.subtitle1
        )
        Spacer(Modifier.width(32.dp))
        Icon(
            painter = painterResource(id = R.drawable.no_egg),
            contentDescription = "No egg icon"
        )
        Spacer(Modifier.width(16.dp))
        Text(
            text = "Egg Free", style = MaterialTheme.typography.subtitle1
        )
    }
}

@Composable
fun RecipeNutrients() {
    Row(
        horizontalArrangement = Arrangement.Center,
        modifier = Modifier
            .height(64.dp)
            .fillMaxWidth()
    ) {
        Column(
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally,
            modifier = Modifier
                .padding(end = 32.dp)
                .fillMaxHeight()
        ) {
            Text(
                text = "Calories",
                style = MaterialTheme.typography.subtitle2,
            )
            Text(
                text = "465g",
                style = MaterialTheme.typography.subtitle1,
            )
        }
        Divider(
            color = basilGreen,
            modifier = Modifier
                .fillMaxHeight()
                .width(.25.dp)
        )
        Column(
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally,
            modifier = Modifier
                .padding(start = 32.dp, end = 32.dp)
                .fillMaxHeight()
        ) {
            Text(
                text = "Protein",
                style = MaterialTheme.typography.subtitle2,
            )
            Text(
                text = "27g",
                style = MaterialTheme.typography.subtitle1,
            )
        }
        Divider(
            color = basilGreen,
            modifier = Modifier
                .fillMaxHeight()
                .width(.25.dp)
        )
        Column(
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally,
            modifier = Modifier
                .padding(start = 32.dp)
                .fillMaxHeight()
        ) {
            Text(
                text = "Fat",
                style = MaterialTheme.typography.subtitle2,
            )
            Text(
                text = "12g",
                style = MaterialTheme.typography.subtitle1,
            )
        }
    }
}

@Composable
fun RecipeDescription() {
    Column(
        Modifier.background(basilLightGreen)
    ) {
        Spacer(Modifier.height(96.dp))
        Divider(thickness = 1.dp, color = basilGreen)
        Text(
            text = "Guilt-free gluten-free spaghetti pasta is sauted in garlic, and pesto. It's a easy and healthy dinner.\n",
            style = MaterialTheme.typography.h6.copy(fontWeight = FontWeight.Normal),
            textAlign = TextAlign.Center
        )
    }
}



