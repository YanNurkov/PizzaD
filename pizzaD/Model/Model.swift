//
//  Model.swift
//  pizzaD
//
//  Created by Ян Нурков on 13.10.2022.
//

import UIKit
import Foundation

struct Sections {
    let settings: [SettingsCellsType]
}

enum SettingsCellsType {
    case mainAction(model: MainActionCell)
    case mainSection(model: MainSectionCell)
    case mainMenu(model: MainMenuCell)
}

struct MainActionCell {
    let image: UIImage?
}

struct MainSectionCell {
    let button: UIButton?
}

struct MainMenuCell {
    let image: UIImage?
    let name: String
    let information: String
    let button: UIButton?
}

struct Results: Decodable {
    let name: String
    let price: Int
    let description: String
    let img: String
}

