//
//  Model.swift
//  IOS8-HW-13-DubinaRoman
//
//  Created by admin on 17.01.2023.
//

import UIKit

struct Model {
    var image: String
    var firstTitle: String
    var secondTitle: String
}

extension Model {
    static var model: [[Model]] = [
        [Model(image: "image 1", firstTitle: "Авиарежим", secondTitle: ""),
         Model(image: "image 2", firstTitle: "WI-FI", secondTitle: "Не подключено"),
         Model(image: "image 3", firstTitle: "Bluetooth", secondTitle: "Вкл."),
         Model(image: "image 4", firstTitle: "Сотовая связь", secondTitle: ""),
         Model(image: "image 5", firstTitle: "Режим модема", secondTitle: ""),
         Model(image: "image 6", firstTitle: "VPN", secondTitle: "")],
        
        [Model(image: "image 7", firstTitle: "Уведомления", secondTitle: ""),
         Model(image: "image 8", firstTitle: "Звуки, тактильные сигналы", secondTitle: ""),
         Model(image: "image 9", firstTitle: "Не беспокоить", secondTitle: ""),
         Model(image: "image 10", firstTitle: "Экранное время", secondTitle: "")],
        
        [Model(image: "image 11", firstTitle: "Основные", secondTitle: ""),
         Model(image: "image 12", firstTitle: "Пункт управления", secondTitle: ""),
         Model(image: "image 13", firstTitle: "Экран и яркость", secondTitle: ""),
         Model(image: "image 14", firstTitle: "Экран Домой", secondTitle: "")]
    ]
}
