import SwiftUI

extension Color {
    static let basilBackground = Color(hex: "fffbe6")
    static let basilGreen = Color(hex: "356859")
    static let basilLightGreen = Color(hex: "f1f5df")
    static let basilOlive = Color(hex: "37966f")
    static let basilOrange = Color(hex: "fd5523")
    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

enum CustomViewStyle {
    case headline1
    case headline2
    case headline3
    case headline4
    case headline5
    case headline6
    case subtitle1
    case subtitle2
    case overline1
}

extension View {
    @ViewBuilder func basilStyle(_ style: CustomViewStyle) -> some View {
        switch style {
        case .headline1:
            self
                .font(Font.custom("Montserrat-Bold", size: 96))
                .foregroundColor(Color.basilGreen)
        case .headline2:
            self
                .font(Font.custom("Montserrat-SemiBold", size: 64))
                .foregroundColor(Color.basilGreen)
        case .headline3:
            self
                .font(Font.custom("Montserrat-Bold", size: 42))
                .foregroundColor(Color.basilGreen)
        case .headline4:
            self
                .font(Font.custom("Montserrat-Bold", size: 34))
                .foregroundColor(Color.basilGreen)
        case .headline5:
            self
                .font(Font.custom("Montserrat-Bold", size: 24))
                .foregroundColor(Color.basilGreen)
        case .headline6:
            self
                .font(Font.custom("Lekton", size: 24))
                .lineSpacing(24/2*1.5)
                .foregroundColor(Color.basilGreen)
        case .subtitle1:
            self
                .font(Font.custom("Lekton-Bold", size: 17))
                .foregroundColor(.basilGreen)
        case .subtitle2:
            self
                .font(Font.custom("Lekton", size: 15))
                .foregroundColor(.basilGreen)
        case .overline1:
            self
                .font(Font.custom("Montserrat-Bold", size: 12))
                .foregroundColor(.basilGreen)
        }
    }
}
