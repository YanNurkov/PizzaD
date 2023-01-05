//
//  TableViewCellAction.swift
//  pizzaD
//
//  Created by Ян Нурков on 25.10.2022.
//

import UIKit
import SnapKit

class TableViewCellAction: UITableViewCell {

    static let reduseID = "ActionTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
        configCollectionView()
        collectionView.snp.makeConstraints { make in
            make.left.right.top.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
        var layout              = UICollectionViewFlowLayout()
        lazy var collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
    
        // DUMMY TAGS ARRAY
        var tagsData: [UIImage?] = [UIImage(named: "pizza1"), UIImage(named: "pizza2"), UIImage(named: "pizza3")]
    
        // Variable that receives the table refresh closure from TableVC
        var refreshTableVCFunc = {(tagName: String) -> Void in}
    
        func configCollectionView() -> Void {
    
            // ADD SUBVIEW
            contentView.addSubview(collectionView)
    
            // SET LAYOUT PROPERTIES
            layout.scrollDirection      = .horizontal
            layout.sectionInset         = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)

            // SET COLLECTIONVIEW PROPERTIES
            collectionView.showsHorizontalScrollIndicator   = false
            collectionView.backgroundColor                  = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
    
            // SET COLLECTIONVIEW DELEGATE AND DATASOURCE
            collectionView.delegate     = self
            collectionView.dataSource   = self
    
            // REGISTER COLLECTIONVIEW CELLS
            collectionView.register(CollectionViewCellAction.self, forCellWithReuseIdentifier: "CellA")
    
            // SET COLLECTIONVIEW CONSTRAINTS
            setCollectionViewConstraints()
        }
    }
    
    
    
    // MARK: CONFORM TO COLLECTION VIEW PROTOCOLS
    
    extension TableViewCellAction: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return tagsData.count
        }
    
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 300, height: 112)
        }
    
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellA", for: indexPath) as! CollectionViewCellAction
            let cellData = tagsData[indexPath.row]
            cell.config(image: cellData!)
            cell.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
            return cell
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 16
        }
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//            return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
//        }
    }
    
    
    
    // MARK: SET CONSTRAINTS
    
    extension TableViewCellAction {
    
        func setCollectionViewConstraints() -> Void {
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
            collectionView.heightAnchor.constraint(greaterThanOrEqualToConstant: 112).isActive = true
        }

        
}
