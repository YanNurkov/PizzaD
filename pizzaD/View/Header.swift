//
//  Header.swift
//  pizzaD
//
//  Created by Ян Нурков on 21.10.2022.
//

import UIKit
import SnapKit

class Header: UITableViewHeaderFooterView {
    
    var collectionViewCell =  CollectionViewCell()
    var isTapped: Bool = false
    var layout              = UICollectionViewFlowLayout()
    lazy var collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
    

    var tagsData: [String] = ["Pizza", "Combo", "Desserts", "Beverages", "Starters"]

    
    func configCollectionView() -> Void {
        
        addSubview(collectionView)
        

        layout.scrollDirection      = .horizontal
        layout.estimatedItemSize    = CGSize(width: 88 , height: 32)
        layout.sectionInset         = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        collectionView.showsHorizontalScrollIndicator  = false
        collectionView.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
        
 
        collectionView.delegate     = self
        collectionView.dataSource   = self
        

        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        

        setCollectionViewConstraints()
        
    }
    
}



// MARK: CONFORM TO COLLECTION VIEW PROTOCOLS

extension Header: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tagsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        let cellData = tagsData[indexPath.row]
        cell.configButton(buttonText: cellData)
        cell.button.tag = indexPath.row
        cell.button.addTarget(self, action: #selector(reloadButton), for: .touchUpInside)
        cell.button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    
        return cell
    }
    
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 88, height: 32)
        }
    
    func pushButton(sender: UIButton) {
        sender.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2)
        sender.titleLabel?.font     = .boldSystemFont(ofSize: 13)
        sender.layer.borderWidth = 0
        sender.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
    }
    
    
    @objc func reloadButton() {
        NotificationCenter.default.post(name: Notification.Name("tapped"), object: nil)
    }
    
    
    
    @objc func buttonTapped(sender: UIButton) {
       

        if sender.tag == 0 {
            NotificationCenter.default.post(name: Notification.Name("scrollView"), object: nil)
            pushButton(sender: sender)
            layoutIfNeeded()
        }
        
        if sender.tag == 1 {
            print("push 2")
            NotificationCenter.default.post(name: Notification.Name("scrollView1"), object: nil)
            pushButton(sender: sender)
            layoutIfNeeded()
        }
        if sender.tag == 2 {
            print("push 3")
            NotificationCenter.default.post(name: Notification.Name("scrollView2"), object: nil)
            pushButton(sender: sender)
            layoutIfNeeded()

        }

        if sender.tag == 3 {
            print("push 4")
            NotificationCenter.default.post(name: Notification.Name("scrollView3"), object: nil)
            pushButton(sender: sender)
            layoutIfNeeded()
        }

        if sender.tag == 4 {
            print("push 4")
            NotificationCenter.default.post(name: Notification.Name("scrollView4"), object: nil)
            pushButton(sender: sender)
            layoutIfNeeded()
        }

    }
}



// MARK: SET CONSTRAINTS

extension Header {
    
    func setCollectionViewConstraints() -> Void {

        
        collectionView.snp.makeConstraints { make in
            make.left.right.top.bottom.equalToSuperview()
        }
    }
    
    
    
    
}

