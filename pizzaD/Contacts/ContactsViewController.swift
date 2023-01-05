//
//  ContactsViewController.swift
//  pizzaD
//
//  Created by Ян Нурков on 30.11.2022.
//

import UIKit
import SafariServices

class ContactsViewController: UIViewController {

    let data = ["Legal documents", "About the application"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        constraints()
       
    }
    
    func configView() {
        view.backgroundColor = .white
        view.addSubview(picture)
        view.addSubview(pizzaOnMapButton)
        view.addSubview(labelSupport)
        view.addSubview(buttonCall)
        view.addSubview(buttonWrite)
        view.addSubview(lineView)
        view.addSubview(vkButton)
        view.addSubview(twitterButton)
        view.addSubview(youtubeButton)
        view.addSubview(lineView2)
        view.addSubview(tableView)
    }

    func constraints() {
        pizzaOnMapButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
            make.top.equalToSuperview().offset(220)
            make.height.equalTo(50)
        }
        picture.snp.makeConstraints { make in
            make.bottom.equalTo(pizzaOnMapButton.snp.top).offset(5)
            make.top.equalToSuperview().offset(50)
            make.left.equalToSuperview().offset(50)
            make.right.equalToSuperview().offset(-50)
        }
        
        labelSupport.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(23)
            make.top.equalTo(pizzaOnMapButton.snp.bottom).offset(50)
        }
        
        buttonCall.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.height.equalTo(50)
            make.top.equalTo(labelSupport.snp.bottom).offset(20)
            make.right.equalTo(view.snp.centerX).offset(-10)
        }
        
        buttonWrite.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(50)
            make.top.equalTo(labelSupport.snp.bottom).offset(20)
            make.left.equalTo(view.snp.centerX).offset(10)
        }
        
        lineView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.height.equalTo(0.2)
            make.top.equalTo(buttonCall.snp.bottom).offset(40)
        }
        
        vkButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(60)
            make.top.equalTo(lineView.snp.bottom).offset(15)
            make.width.height.equalTo(60)
        }
        
        twitterButton.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(15)
            make.width.height.equalTo(60)
            make.centerX.equalTo(view.snp.centerX)
        }
        
        youtubeButton.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(15)
            make.width.height.equalTo(60)
            make.right.equalToSuperview().offset(-60)
        }
        
        lineView2.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.height.equalTo(0.3)
            make.top.equalTo(vkButton.snp.bottom).offset(15)
        }
        tableView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(lineView2.snp.bottom)
            make.height.equalTo(150)
        }
    }
    
    lazy var pizzaOnMapButton: UIButton = {
        let obj = UIButton()
        obj.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1)
        obj.setTitle("Pizzerias on the map", for: .normal)
        obj.layer.cornerRadius = 25
        obj.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        obj.addTarget(self, action: #selector(openMap), for: .touchDown)
        return obj
    }()
    
    lazy var picture: UIImageView = {
        let obj = UIImageView()
        obj.layer.masksToBounds = true
        obj.layer.cornerRadius = 20
        obj.image = UIImage(named: "city")
        return obj
    }()
    
    lazy var labelSupport: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.font = .boldSystemFont(ofSize: 20)
        obj.text = "Contact Support"
        return obj
    }()
    
    lazy var buttonCall: UIButton = {
        let obj = UIButton()
        obj.setTitle("Call", for: .normal)
        obj.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
        obj.titleLabel?.font = .boldSystemFont(ofSize: 15)
        obj.layer.cornerRadius = 25
        obj.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2)
        obj.addTarget(self, action: #selector(call), for: .touchDown)
        return obj
    }()
    
    lazy var buttonWrite: UIButton = {
        let obj = UIButton()
        obj.setTitle("Write to chat", for: .normal)
        obj.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
        obj.titleLabel?.font = .boldSystemFont(ofSize: 15)
        obj.layer.cornerRadius = 25
        obj.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2)
        return obj
    }()
    
    lazy var lineView: UIView = {
        let obj = UIView()
        obj.backgroundColor = .lightGray
        obj.alpha = 0.4
        return obj
    }()
    
    lazy var vkButton: UIButton = {
        let obj = UIButton()
        obj.setImage(UIImage(named: "vk"), for: .normal)
//        obj.adjustsImageWhenHighlighted = false
        obj.addTarget(self, action: #selector(vk), for: .touchDown)
        return obj
    }()
    
    lazy var twitterButton: UIButton = {
        let obj = UIButton()
        obj.setImage(UIImage(named: "twitter"), for: .normal)
//        obj.adjustsImageWhenHighlighted = false
        obj.addTarget(self, action: #selector(twitter), for: .touchDown)
        return obj
    }()
    
    lazy var youtubeButton: UIButton = {
        let obj = UIButton()
        obj.setImage(UIImage(named: "youtube"), for: .normal)
//        obj.adjustsImageWhenHighlighted = false
        obj.addTarget(self, action: #selector(youtube), for: .touchDown)
        return obj
    }()

    lazy var lineView2: UIView = {
        let obj = UIView()
        obj.backgroundColor = .lightGray
        obj.alpha = 0.4
        return obj
    }()
    
    lazy var tableView: UITableView = {
        let obj = UITableView()
        obj.backgroundColor = .clear
        obj.separatorInset = UIEdgeInsets.zero
        obj.delegate = self
        obj.dataSource = self
        obj.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
       obj.sectionHeaderHeight = 50
        return obj
    }()
    
   @objc func openMap() {
        navigationController?.pushViewController(MapViewController(), animated: true)
    }
    
    @objc func call() {
        guard let url = URL(string: "telprompt://\(+79957774522)"),
                UIApplication.shared.canOpenURL(url) else {
                return
            }
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    @objc func vk() {
        let safariVC = SFSafariViewController(url: URL(string: "https://vk.ru/")!)
       let vc = VKViewController(safariVC: safariVC)
       present(vc, animated: true)
    }
    
    @objc func twitter() {
        let safariVC = SFSafariViewController(url: URL(string: "https://twitter.com/")!)
       let vc = VKViewController(safariVC: safariVC)
       present(vc, animated: true)
    }
    
    @objc func youtube() {
        let safariVC = SFSafariViewController(url: URL(string: "https://youtube.com/")!)
       let vc = VKViewController(safariVC: safariVC)
       present(vc, animated: true)
    }
}

extension ContactsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        cell.textLabel?.text = data[indexPath.row]
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            navigationController?.pushViewController(LegalDocViewController(), animated: true)
        }
        if indexPath.row == 1 {
            navigationController?.pushViewController(AboutAppViewController(), animated: true)
        }
    }
    
}
