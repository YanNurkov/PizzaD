//
//  NewOrder+CoreDataProperties.swift
//  pizzaD
//
//  Created by Ян Нурков on 30.11.2022.
//
//

import Foundation
import CoreData
import UIKit

extension NewOrder {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NewOrder> {
        return NSFetchRequest<NewOrder>(entityName: "NewOrder")
    }

    @NSManaged public var image: String?
    @NSManaged public var name: String?
    @NSManaged public var aboutPizza: String?
    @NSManaged public var price: Int64
    @NSManaged public var numberOfCell: UUID?

}

extension NewOrder : Identifiable {

}
