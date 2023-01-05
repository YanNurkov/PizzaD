//
//  MainModel.swift
//  pizzaD
//
//  Created by Ян Нурков on 13.10.2022.
//

import UIKit

final class MainModel {
   static func getSections() -> [Sections] {
        return [
            Sections(settings: [
                .mainMenu(model: MainMenuCell(image: UIImage(systemName: "trash"), name: "bjnjkm" , information: "gvbh", button: nil)),
                
            ])
        ]
    }
}

