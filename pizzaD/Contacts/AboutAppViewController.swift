//
//  AboutAppViewController.swift
//  pizzaD
//
//  Created by Ян Нурков on 01.12.2022.
//

import UIKit

class AboutAppViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configView()
        makeConstraints()
        navigationItem.title = "About the application"
    }
    
    func configView() {
        view.addSubview(picture)
        view.addSubview(labelSupport)
    }
    
    func makeConstraints() {
        picture.snp.makeConstraints { make in
            make.center.equalTo(view.snp.center)
            make.height.width.equalTo(150)
        }
        
        labelSupport.snp.makeConstraints { make in
            make.top.equalTo(picture.snp.bottom).offset(20)
            make.height.equalTo(23)
            make.left.right.equalToSuperview()
        }
    }
    
    lazy var picture: UIImageView = {
        let obj = UIImageView()
        obj.layer.masksToBounds = true
        obj.layer.cornerRadius = 20
        obj.image = UIImage(named: "city")
        return obj
    }()
    
    lazy var labelSupport: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .center
        obj.font = .boldSystemFont(ofSize: 20)
        obj.text = "Version 1.0"
        return obj
    }()
}
