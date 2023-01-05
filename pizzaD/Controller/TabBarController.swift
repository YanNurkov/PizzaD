//
//  TabBarController.swift
//  pizzaD
//
//  Created by Ян Нурков on 13.10.2022.
//

import UIKit


final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
        setupTabBarViewController()
    }
    
   
    
    func setupTabBarController() {
        tabBar.tintColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1)
        tabBar.backgroundColor = .white
    }
    
   
    
    func setupTabBarViewController() {
        let menu = ViewController()
        let menuIcon = UITabBarItem(title: "Menu", image: UIImage(named: "pizzaicon1"), selectedImage: UIImage(named: "pizzaicon"))
        menu.tabBarItem = menuIcon
        
        let contacts = UINavigationController(rootViewController: ContactsViewController())
        let contactsIcon = UITabBarItem(title: "Contacts", image: UIImage(named: "pinicon1"), selectedImage: UIImage(named: "pinicon"))
        contacts.tabBarItem = contactsIcon
        
        let profile = ViewController()
        let profileIcon = UITabBarItem(title: "Profile", image: UIImage(named: "manicon"), selectedImage: UIImage(named: "manicon1"))
        profile.tabBarItem = profileIcon
        
        let basket = BasketViewController()
        let basketIcon = UITabBarItem(title: "Basket", image: UIImage(named: "pinkBasket1"), selectedImage: UIImage(named: "pinkBasket"))
        basket.tabBarItem = basketIcon
        
        let controllers  = [menu, contacts, profile, basket]
        self.setViewControllers(controllers, animated: true)
    }
}

