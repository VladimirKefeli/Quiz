//
//  CountryName.swift
//  Quiz
//
//  Created by Владимир Кефели on 13.01.2021.
//

enum CountryName: Character {
    case russia = "🇷🇺"
    case usa = "🇺🇸"
    case germany = "🇩🇪"
    case france = "🇫🇷"
    case canada = "🇨🇦"
    case japan = "🇯🇵"
    case australia = "🇦🇺"
    case italy = "🇮🇹"
    case mexico = "🇲🇽"
    case ireland = "🇮🇪"
    case greatBritain = "🇬🇧"
    case israel = "🇮🇱"
    case turkey = "🇹🇷"
    
    var definition: String {
        switch self {
        case .russia:
            return "Россия"
        case .usa:
            return "Соединённые Штаты Америки"
        case .germany:
            return "Германия"
        case .france:
            return "Франция"
        case .canada:
            return "Канада"
        case .japan:
            return "Япония"
        case .australia:
            return "Австралия"
        case .italy:
            return "Италия"
        case .mexico:
            return "Мексика"
        case .ireland:
            return "Ирландия"
        case .greatBritain:
            return "Великобритания"
        case .israel:
            return ""
        case .turkey:
            return ""
            
        }
    }
}
