import androidx.compose.material.Typography
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.platform.Font
import androidx.compose.ui.unit.sp

val basilBackground = Color(0xfffffbe6)
val basilGreen = Color(0xff356859)
val basilLightGreen = Color(0xfff1f5df)
val basilOlive = Color(0xff37966f)
val basilOrange = Color(0xfffd5523)

val Montserrat = FontFamily(
    Font(resource = "montserrat_regular.ttf"),
    Font(resource = "montserrat_bold.ttf", FontWeight.Bold),
    Font(resource = "montserrat_semibold.ttf", FontWeight.SemiBold),
)

val Lekton = FontFamily(
    Font(resource = "lekton_regular.ttf"),
    Font(resource = "lekton_bold.ttf", FontWeight.Bold),
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
        fontSize = 64.sp,
        color = basilGreen
    ),
    h3 = TextStyle(
        fontFamily = Montserrat,
        fontWeight = FontWeight.Bold,
        fontSize = 42.sp,
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
)

