package com.example.composeapp

import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.text.style.TextAlign

@Composable
fun RecipeName() {
    Text(
        text = "Creamy Pesto Pasta",
        style = MaterialTheme.typography.h3.copy(color = basilOrange),
        textAlign = TextAlign.Center
    )
}
