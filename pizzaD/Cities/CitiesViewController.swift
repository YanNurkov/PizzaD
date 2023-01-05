//
//  CitiesViewController.swift
//  pizzaD
//
//  Created by Ян Нурков on 19.11.2022.
//

import UIKit
import SnapKit

class CitiesViewController: UIViewController{

    let data = ["Moscow", "Novosibirsk", "Murmansk", "Omsk", "Tomsk", "Barnaul", "Tumen", "Khabarovsk", "Barabinsk", "Ufa", "Kazan", "Tobolsk", "Almany", "Tver", "Novgorod", "Bogorodsk", "Kizil"]
    var filtereddata: [String]!
    let activityIndicatorView = UIActivityIndicatorView(style: .large)
    let viewController = ViewController()
  
    var city = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        filtereddata = data
        
        tableView.tableHeaderView?.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
        
       
    }
    
    func configView() {
        view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
        view.addSubview(tableView)
        view.addSubview(activityIndicatorView)
        view.addSubview(label)
        makeConstraints()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Russia"
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
    }
    
    func makeConstraints() {
        tableView.snp.makeConstraints { make in
            make.left.right.bottom.top.equalToSuperview()
        }
       activityIndicatorView.snp.makeConstraints { make in
            make.left.right.top.bottom.equalToSuperview()
        }
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.right.equalToSuperview()
            make.height.equalTo(15)
        }
       
        
    }
    
    lazy var searchBar: UISearchBar = {
        let obj = UISearchBar()
        obj.barTintColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
        obj.searchBarStyle = UISearchBar.Style.minimal
        obj.placeholder = " Search city"
        obj.sizeToFit()
        obj.isTranslucent = true
        obj.delegate = self
        obj.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
        return obj
    }()
    
    lazy var tableView: UITableView = {
        let obj = UITableView(frame: .zero, style: .plain)
        obj.backgroundColor = .clear
        obj.separatorInset = UIEdgeInsets.zero
        obj.delegate = self
        obj.dataSource = self
        obj.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
       obj.sectionHeaderHeight = 50
        return obj
    }()
    
    lazy var label: UILabel = {
        let obj = UILabel()
        obj.text = "Drop the city to see the menu"
        obj.font = UIFont(name: "Arial", size: 13)
        obj.textAlignment = .center
        return obj
    }()
 
}


extension CitiesViewController: UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filtereddata.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        let filter = filtereddata.sorted
        cell.textLabel?.text = filter()[indexPath.row]
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filtereddata = []
        if searchText == "" {
            filtereddata = data
        }
        else {
            for i in data {
                if i.lowercased().contains(searchText.lowercased()) {
                    filtereddata.append(i)
                }
            }
        }
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCell.AccessoryType.checkmark  {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.checkmark
            tableView.allowsSelection = false
            (self.searchBar.value(forKey: "searchField") as! UITextField).isEnabled = false
            let defaults = UserDefaults.standard
            defaults.set(self.filtereddata.sorted()[indexPath.row], forKey: "city")
            activityIndicatorView.startAnimating()
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(1000)) {
                self.activityIndicatorView.stopAnimating()
                NotificationCenter.default.post(name: Notification.Name("cityReload"), object: nil)
                self.dismiss(animated: true)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let headerView:UIView =  UIView()
        headerView.addSubview(searchBar)
        searchBar.snp.makeConstraints { make in
            make.left.right.top.equalTo(headerView)
        }
        return headerView
    }
    

}

