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
    case japan = "🇯🇵"
    case ukraine = "🇺🇦"
    case greatBritain = "🇬🇧"
    
    
    var definition: String {
        switch self {
        case .russia:
            return "Россия"
        case .usa:
            return "Соединённые Штаты Америки"
        case .germany:
            return "Германия"
        case .japan:
            return "Япония"
        case .ukraine:
            return "Украина"
        case .greatBritain:
            return "Великобритания"
        
            
        }
    }
}
