//
//  Model.swift
//  IOS8-HW-13-DubinaRoman
//
//  Created by admin on 17.01.2023.
//

import UIKit

struct Model {
    var image: String
    var firstLabel: String
    var secondLabel: String
}

extension Model {
    static let model: [[Model]] = [
        [Model(image: "image 1", firstLabel: "Авиарежим", secondLabel: ""),
         Model(image: "image 2", firstLabel: "Wi-Fi", secondLabel: "Не подключено"),
         Model(image: "image 3", firstLabel: "Bluetooth", secondLabel: "Вкл."),
         Model(image: "image 4", firstLabel: "Сотовая связь", secondLabel: ""),
         Model(image: "image 5", firstLabel: "Режим модема", secondLabel: ""),
         Model(image: "image 6", firstLabel: "VPN", secondLabel: "")],
        
        [Model(image: "image 7", firstLabel: "Уведомления", secondLabel: ""),
         Model(image: "image 8", firstLabel: "Звуки, тактильные сигналы", secondLabel: ""),
         Model(image: "image 9", firstLabel: "Не беспокоить", secondLabel: ""),
         Model(image: "image 10", firstLabel: "Экранное время", secondLabel: "")],
        
        [Model(image: "image 11", firstLabel: "Основные", secondLabel: ""),
         Model(image: "image 12", firstLabel: "Пункт управления", secondLabel: ""),
         Model(image: "image 13", firstLabel: "Экран и яркость", secondLabel: ""),
         Model(image: "image 14", firstLabel: "Экран Домой", secondLabel: "")]
    ]
}
