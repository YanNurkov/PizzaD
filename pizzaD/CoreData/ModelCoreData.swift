//
//  ModelCoreData.swift
//  pizzaD
//
//  Created by Ян Нурков on 30.11.2022.
//

import Foundation
import CoreData
import UIKit

class CoreDataManager {
    enum FieldType {
        case aboutPizza(String)
        case name(String)
        case price(Int)
        case image(String)
    }
    
    private lazy var context: NSManagedObjectContext = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {fatalError()}
        return appDelegate.persistentContainer.viewContext
    }()
    
    func loadAllOrders(completion: @escaping ([NewOrder]) -> Void) {
        let request: NSFetchRequest<NewOrder> = NewOrder.fetchRequest()
        do {
            let result = try context.fetch(request)
            completion(result)
        } catch {
            print("errorloadAllOrders")
        }
    }
    
    func addNewOrder(completion: @escaping (UUID) -> Void) {
        let order = NewOrder(context: context)
        let id = UUID()
        order.numberOfCell = id
        do {
            try context.save()
            completion(id)
        } catch {
            print("errorAddNewOrder")
        }
    }
    
    func loadOrder(uuid: UUID, completion: @escaping (NewOrder) -> Void) {
        let request: NSFetchRequest<NewOrder> = NewOrder.fetchRequest()
        request.predicate = NSPredicate(format: "%K == %@", "numberOfCell", uuid as CVarArg)
        do {
            let order = try context.fetch(request)
            guard let order = order.first else {return}
            completion(order)
        } catch {
            print("errorloadOrder")
        }
    }
    
    func updateOrder(uuid: UUID, fieldTypy: FieldType) {
        loadOrder(uuid: uuid) { newOrder in
            switch fieldTypy {
            case .name(let string):
                newOrder.name = string
            case .aboutPizza(let string):
                newOrder.aboutPizza = string
            case .price(let int):
                newOrder.price = Int64(int)
            case .image(let string):
                newOrder.image = string
            }
            do {
                try self.context.save()
            } catch {
                print("errorupdateOrder")
            }
        }
    }
    
    func deleteOrder(uuid: UUID) {
        let request: NSFetchRequest<NewOrder> = NewOrder.fetchRequest()
        request.predicate = NSPredicate(format: "%K == %@", "numberOfCell", uuid as CVarArg)
        guard let result = try? context.fetch(request).first else {return}
        context.delete(result)
        try? context.save()
    }
}

