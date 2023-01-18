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
    var update: Bool
}

extension Model {
    static var mocks: [[Model]] = [
        [Model(image: "image 1", firstLabel: "Авиарежим", secondLabel: "", update: true),
         Model(image: "image 2", firstLabel: "Wi-Fi", secondLabel: "Не подключено", update: true),
         Model(image: "image 3", firstLabel: "Bluetooth", secondLabel: "Вкл.", update: true),
         Model(image: "image 4", firstLabel: "Сотовая связь", secondLabel: "", update: true),
         Model(image: "image 5", firstLabel: "Режим модема", secondLabel: "", update: true),
         Model(image: "image 6", firstLabel: "VPN", secondLabel: "", update: true)],
        
        [Model(image: "image 7", firstLabel: "Уведомления", secondLabel: "", update: true),
         Model(image: "image 8", firstLabel: "Звуки, тактильные сигналы", secondLabel: "", update: true),
         Model(image: "image 9", firstLabel: "Не беспокоить", secondLabel: "", update: true),
         Model(image: "image 10", firstLabel: "Экранное время", secondLabel: "", update: true)],
        
        [Model(image: "image 11", firstLabel: "Основные", secondLabel: "", update: false),
         Model(image: "image 12", firstLabel: "Пункт управления", secondLabel: "", update: true),
         Model(image: "image 13", firstLabel: "Экран и яркость", secondLabel: "", update: true),
         Model(image: "image 14", firstLabel: "Экран Домой", secondLabel: "", update: true)]
    ]
}
