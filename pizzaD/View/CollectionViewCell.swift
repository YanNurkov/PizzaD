//
//  CollectionViewCell.swift
//  pizzaD
//
//  Created by Ян Нурков on 21.10.2022.
//

import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell {
    static let reduseID = "CollectionViewCell"
    
    var button: UIButton  = UIButton()
    var tagName: String?
    var viewController = ViewController()
   
    // Variable that receives the Table Refresh Closure from TableVC -> TableHeader
    //var refreshTableVCFunc = {(tagName: String) -> Void in }
    
    
    func configButton(buttonText: String) -> Void {
        NotificationCenter.default.addObserver(self, selector: #selector(buttonUpdate), name: Notification.Name("tapped"), object: nil)
        addSubview(button)
        button.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.4), for: .normal)
        button.layer.borderColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2).cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius   = 17
        button.clipsToBounds        = true
        button.titleLabel?.font     = .systemFont(ofSize: 13)
        tagName = buttonText
        button.setTitle(buttonText, for: .normal)
        button.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(14)
            make.bottom.equalToSuperview().offset(-14)
            make.width.equalTo(88)
            make.height.equalTo(32)
        }       
       
    }
    
    @objc func buttonUpdate(notification: NSNotification) {
        button.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.4), for: .normal)
        button.layer.borderColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2).cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius   = 17
        button.clipsToBounds        = true
        button.titleLabel?.font     = .systemFont(ofSize: 13)
        button.backgroundColor = .clear
    }
    

}
