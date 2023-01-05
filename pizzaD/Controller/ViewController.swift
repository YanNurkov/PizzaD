//
//  ViewController.swift
//  pizzaD
//
//  Created by Ян Нурков on 13.10.2022.
//

import UIKit
import SDWebImage


class ViewController: UIViewController {

    var model: MainModel?
    var cell : TableViewCell?
    var result = [Results]()
    var mainView: MainView?
    
    
    private var View: MainView? {
        guard isViewLoaded else {return nil}
        return view as? MainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = MainView(viewController: self)
        model = MainModel()
        NotificationCenter.default.addObserver(self, selector: #selector(cityReload), name: Notification.Name("cityReload"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(functionName), name: Notification.Name("scrollView"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(functionName1), name: Notification.Name("scrollView1"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(functionName2), name: Notification.Name("scrollView2"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(functionName3), name: Notification.Name("scrollView3"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(functionName4), name: Notification.Name("scrollView4"), object: nil)
        
       requestAPI(competion: { data in
            self.result = data
            DispatchQueue.main.async {
                self.View?.tableView.reloadData()
                for i in self.result {
                    print(i.name)
                }
            }
        })
    }

    override func viewWillAppear(_ animated: Bool) {
        self.view = MainView(viewController: self)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.post(name: Notification.Name("cityReload"), object: nil)
    }

        func requestAPI(competion: @escaping ([Results])->()) {
            let headers = [
                "X-RapidAPI-Key": "dc0e9681a0mshba99769c03f25ccp1a84c2jsnae62b6df1fa6",
                "X-RapidAPI-Host": "pizza-and-desserts.p.rapidapi.com"
            ]

            
            let infoUrl = "https://pizza-and-desserts.p.rapidapi.com/pizzas"
            guard let url = URL(string: infoUrl) else {return}
            let request = NSMutableURLRequest(url: url,
                                              cachePolicy: .useProtocolCachePolicy,
                                              timeoutInterval: 10.0)
            request.httpMethod = "GET"
            request.allHTTPHeaderFields = headers
            
            let session = URLSession.shared
            let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
                if (error != nil) {
                    print(error as Any)
                } else {
                    let httpResponse = response as? HTTPURLResponse
                    print(httpResponse as Any)
                }
                if let data = data {
                    do {
                        let response = try JSONDecoder().decode([Results].self, from: data)
                        print(response[2].name)
                        competion(response)
                        
                    } catch {
                        print(error)
                    }
                }
            })
            
            dataTask.resume()
            
        }
        
    
    @objc func functionName (notification: NSNotification){
        let selectedIndex = IndexPath(row:0 , section: 1)
        View?.tableView.scrollToRow(at: selectedIndex, at: .top, animated:true)
        View?.tableView.reloadData()
        }
    
    
    @objc func functionName1 (notification: NSNotification){
        let selectedIndex = IndexPath(row:8 , section: 1)
        View?.tableView.scrollToRow(at: selectedIndex, at: .top, animated:true)
        View?.tableView.reloadData()
        }

    
    @objc func functionName2 (notification: NSNotification){
        let selectedIndex = IndexPath(row:13 , section: 1)
        View?.tableView.scrollToRow(at: selectedIndex, at: .top, animated:true)
        View?.tableView.reloadData()
        }
    
    @objc func functionName3 (notification: NSNotification){
        let selectedIndex = IndexPath(row:18 , section: 1)
        View?.tableView.scrollToRow(at: selectedIndex, at: .top, animated:true)
        View?.tableView.reloadData()
        }
    
    @objc func functionName4 (notification: NSNotification){
        let selectedIndex = IndexPath(row:26 , section: 1)
        View?.tableView.scrollToRow(at: selectedIndex, at: .top, animated:true)
        View?.tableView.reloadData()
        }

    @objc func cityReload(notification: NSNotification) {
        let key = UserDefaults.standard.object(forKey: "city") as? String
        if key == nil {
            self.View?.buttonCity.setTitle("Moscow" + " ⌵", for: .normal)
        } else {
            self.View?.buttonCity.setTitle(String(key!) + " ⌵", for: .normal)
        }
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return result.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: TableViewCellAction.reduseID) as! TableViewCellAction
            cell1.selectionStyle = .none
            return cell1
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reduseID) as! TableViewCell
            cell.selectionStyle = .none
            cell.label.text = result[indexPath.row].name
            cell.textField.text = result[indexPath.row].description
            cell.button.setTitle("From " + String(result[indexPath.row].price) + " $", for: .normal)
            cell.iconImageView.sd_setImage(with: URL(string: result[indexPath.row].img), placeholderImage: UIImage(named: "pizza"))
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1 {
            return 60
        } else {
            return 0
        }

    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 112
        }
        return 180
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as! Header
        if section == 1 {
            headerView.configCollectionView()
            return headerView
        } else {
            return nil
        }
       
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let cornerRadius = 20
        var corners: UIRectCorner = []
        if indexPath.row == 0 {
            corners.update(with: .topLeft)
            corners.update(with: .topRight)
        }
    
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: cell.bounds,
                                      byRoundingCorners: corners,
                                      cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)).cgPath
        if indexPath.section == 1 {
            cell.layer.mask = maskLayer
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = result[indexPath.row]
        let pizzaViewController = PizzaViewController()
        pizzaViewController.nameLabel.text = data.name
        pizzaViewController.text.text = data.description
        pizzaViewController.button.setTitle("In basket on " + "\(data.price)" + " $", for: .normal)
        pizzaViewController.picture.sd_setImage(with: URL(string: result[indexPath.row].img), placeholderImage: UIImage(named: "pizza"))
        pizzaViewController.price = result[indexPath.row].price
        pizzaViewController.image = result[indexPath.row].img
        pizzaViewController.about = result[indexPath.row].description
        pizzaViewController.name = result[indexPath.row].name
        pizzaViewController.infoViewName.text = data.name
        present(pizzaViewController, animated: true)
    }
    
}

