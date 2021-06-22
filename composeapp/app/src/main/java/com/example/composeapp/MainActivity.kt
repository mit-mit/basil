package com.example.composeapp

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Surface
import androidx.compose.material.Typography
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp
import com.example.composeapp.ui.theme.ComposeappTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)


        setContent {
            ComposeappTheme {
                // A surface container using the 'background' color from the theme
                Surface(color = MaterialTheme.colors.background) {
                    Recipe()

                }
            }
        }
    }
}

val basilBackground = Color(0xfffffbe6)
val basilGreen = Color(0xff356859)
val basilLightGreen = Color(0xfff1f5df)

// val basilOlive = Color(0xff37966f)
val basilOrange = Color(0xfffd5523)

val Montserrat = FontFamily(
    Font(R.font.montserrat_regular),
    Font(R.font.montserrat_bold, FontWeight.Bold),
    Font(R.font.montserrat_semibold, FontWeight.SemiBold),
)

val Lekton = FontFamily(
    Font(R.font.lekton_regular),
    Font(R.font.lekton_bold, FontWeight.Bold),
)

val MyTypography = Typography(
    h1 = TextStyle(
        fontFamily = Montserrat,
        fontWeight = FontWeight.Bold,
        fontSize = 96.sp,
        color = basilOrange
    ),
    h2 = TextStyle(
        fontFamily = Montserrat,
        fontWeight = FontWeight.SemiBold,
        fontSize = 60.sp,
        color = basilGreen
    ),
    h3 = TextStyle(
        fontFamily = Montserrat,
        fontWeight = FontWeight.Bold,
        fontSize = 48.sp,
        color = basilGreen
    ),
    h4 = TextStyle(
        fontFamily = Montserrat,
        fontWeight = FontWeight.Bold,
        fontSize = 34.sp,
        color = basilGreen
    ),
    h5 = TextStyle(
        fontFamily = Montserrat,
        fontWeight = FontWeight.Bold,
        fontSize = 24.sp,
        color = basilGreen
    ),
    h6 = TextStyle(
        fontFamily = Lekton,
        fontWeight = FontWeight.Bold,
        fontSize = 24.sp,
        lineHeight = (24 * 1.5).sp,
        color = basilGreen
    ),
    subtitle1 = TextStyle(
        fontFamily = Lekton,
        fontWeight = FontWeight.Bold,
        fontSize = 17.sp,
        color = basilGreen
    ),
    subtitle2 = TextStyle(
        fontFamily = Lekton,
        fontSize = 15.sp,
        color = basilGreen
    ),
    body1 = TextStyle(
        fontFamily = Montserrat,
        fontWeight = FontWeight.Bold,
        fontSize = 16.sp,
        color = basilGreen
    ),
    body2 = TextStyle(
        fontFamily = Montserrat,
        fontWeight = FontWeight.Bold,
        fontSize = 14.sp,
        color = basilGreen
    ),
)

