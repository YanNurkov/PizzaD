//
//  BasketViewController.swift
//  pizzaD
//
//  Created by Ян Нурков on 29.11.2022.
//

import UIKit

class BasketViewController: UIViewController {
    
    var totalProduct = [1]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        makeConstraints()
        view.backgroundColor = .white
        updateBasket()
    }
    
    func configView() {
        view.addSubview(viewEmptyBasket)
        viewEmptyBasket.addSubview(iconEmptyBasket)
        viewEmptyBasket.addSubview(labelBasketEmptyBasket)
        viewEmptyBasket.addSubview(labelEmptyBasket)
        viewEmptyBasket.addSubview(textEmptyBasket)
        viewEmptyBasket.addSubview(buttonEmptyBasket)
        view.addSubview(labelBasketEmptyBasket)
        view.addSubview(labelTotalPrice)
        view.addSubview(tableView)
        view.addSubview(button)
    }
    
    func makeConstraints() {
        viewEmptyBasket.snp.makeConstraints { make in
            make.left.right.bottom.top.equalToSuperview()
        }
        
        iconEmptyBasket.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(120)
            make.height.equalTo(263)
            make.width.equalTo(400)
        }
        
        labelBasketEmptyBasket.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.left.right.equalToSuperview()
            make.height.equalTo(20)
        }
        
        labelEmptyBasket.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.center.equalToSuperview()
            make.height.equalTo(30)
        }
        
        textEmptyBasket.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(50)
            make.right.equalToSuperview().offset(-50)
            make.top.equalTo(labelEmptyBasket.snp.bottom).offset(5)
            make.height.equalTo(50)
        }
        
        buttonEmptyBasket.snp.makeConstraints { make in
            make.top.equalTo(textEmptyBasket.snp.bottom).offset(15)
            make.left.equalToSuperview().offset(36)
            make.right.equalToSuperview().offset(-36)
            make.height.equalTo(50)
        }
        
        labelTotalPrice.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.top.equalTo(labelBasketEmptyBasket.snp.bottom).offset(20)
            make.height.equalTo(30)
        }
        
        tableView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(labelTotalPrice.snp.bottom).offset(8)
            make.bottom.equalTo(button.snp.top).offset(-18)
        }
        
        button.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-95)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(50)

        }
    }
    
    lazy var viewEmptyBasket: UIView = {
        let obj = UIView()
        obj.backgroundColor = .white
        obj.isHidden = true
        return obj
    }()
    
    lazy var iconEmptyBasket: UIImageView = {
        let obj = UIImageView()
        obj.image = UIImage(named: "dog")
        return obj
    }()
    
    lazy var labelBasketEmptyBasket: UILabel = {
        let obj = UILabel()
        obj.text = "Basket"
        obj.textAlignment = .center
        obj.font = .boldSystemFont(ofSize: 15)
        return obj
    }()
    
    lazy var labelEmptyBasket: UILabel = {
        let obj = UILabel()
        obj.text = "Oh, empty!"
        obj.textAlignment = .center
        obj.font = .boldSystemFont(ofSize: 25)
        return obj
    }()
    
    lazy var textEmptyBasket: UILabel = {
        let obj = UILabel()
        obj.text = "Your cart is empty, open the Menu and select the product you like."
        obj.textAlignment = .center
        obj.numberOfLines = 0
        obj.font = .systemFont(ofSize: 13)
        return obj
    }()
    
    lazy var buttonEmptyBasket: UIButton = {
        let obj = UIButton()
        obj.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1)
        obj.setTitle("Go to menu", for: .normal)
        obj.layer.cornerRadius = 25
        obj.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        obj.addTarget(self, action: #selector(goToMenu), for: .touchDown)
        return obj
    }()
    
    @objc func goToMenu() {
        print(totalProduct)
        DispatchQueue.main.async {
           self.tabBarController?.selectedIndex = 0
        }
    }
    
    
    lazy var labelTotalPrice: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.text = "ggggg"
        obj.font = .boldSystemFont(ofSize: 25)
        return obj
    }()
    
    lazy var tableView: UITableView = {
        let obj = UITableView(frame: .zero, style: .plain)
        obj.backgroundColor = .clear
        obj.separatorInset = UIEdgeInsets.zero
        obj.separatorStyle = .none
        obj.sectionHeaderTopPadding = 0.0
        obj.delegate = self
        obj.dataSource = self
        obj.register(BasketTableViewCell.self, forCellReuseIdentifier: BasketTableViewCell.reduseID)
        return obj
    }()
   
    lazy var button: UIButton = {
        let obj = UIButton()
        obj.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1)
        obj.setTitle("Place an order for ", for: .normal)
        obj.layer.cornerRadius = 25
        obj.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        return obj
    }()
    
    func updateBasket() {
        if totalProduct.isEmpty {
            viewEmptyBasket.isHidden = false
            button.isHidden = true
            labelTotalPrice.isHidden = true
            tableView.isHidden = true
        } else {
            viewEmptyBasket.isHidden = true
            button.isHidden = false
            labelTotalPrice.isHidden = false
            tableView.isHidden = false
        }
    }
}

extension BasketViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return totalProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BasketTableViewCell.reduseID) as! BasketTableViewCell
        cell.selectionStyle = .none
        cell.labelPrice.text = "690"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
