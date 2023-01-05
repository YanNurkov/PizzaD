//
//  View.swift
//  pizzaD
//
//  Created by Ян Нурков on 13.10.2022.
//

import UIKit
import SnapKit

class MainView: UIView {
   
    
    var viewController: UIViewController?
    var collectionViewCell: CollectionViewCell?

    
    lazy var tableView: UITableView = {
        let obj = UITableView(frame: .zero, style: .plain)
        obj.backgroundColor = .clear
        obj.separatorInset = UIEdgeInsets.zero
        obj.sectionHeaderTopPadding = 0.0
        obj.delegate = viewController as? UITableViewDelegate
        obj.dataSource = viewController as? UITableViewDataSource
        obj.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.reduseID)
        obj.register(Header.self, forHeaderFooterViewReuseIdentifier: "header")
        obj.register(TableViewCellAction.self, forCellReuseIdentifier: TableViewCellAction.reduseID)
        return obj
    }()
    
    lazy var buttonCity: UIButton = {
        let obj = UIButton()
        obj.titleLabel?.font = UIFont(name: "Arial", size: 17)
        obj.setTitleColor(.black, for: .normal)
        obj.addTarget(self, action: #selector(cities) , for: .touchDown)
        obj.contentHorizontalAlignment = .left
        return obj
    }()
    
    
    init(viewController: UIViewController) {
        super.init(frame: .zero)
        self.viewController = viewController
        configView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configView() {
        backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
        addSubview(tableView)
        addSubview(buttonCity)
        makeConstraints()
    }
     
    func makeConstraints() {
        self.tableView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview().offset(80)
            make.bottom.equalToSuperview().offset(-20)
        }
        
        self.buttonCity.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.bottom.equalTo(tableView.snp.top).offset(-10)
            make.width.equalTo(120)
            make.height.equalTo(20)
        }
    }
    
   @objc func cities() {
       let cities = CitiesViewController()
       let navVC = UINavigationController(rootViewController: cities)
       viewController?.present(navVC, animated: true)
    }
    
}

