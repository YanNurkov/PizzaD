//
//  CollectionViewCellAction.swift
//  pizzaD
//
//  Created by Ян Нурков on 25.10.2022.
//

import UIKit
import SnapKit

class CollectionViewCellAction: UICollectionViewCell {
    static let reduseID = "CollectionViewCellAction"
    
    
        var icon: UIImageView = UIImageView()
        func config(image: UIImage) -> Void {
    
            addSubview(icon)
            icon.snp.makeConstraints { make in
                make.left.equalToSuperview()
                make.right.equalToSuperview()
                make.top.equalToSuperview()
                make.bottom.equalToSuperview()
            }
            icon.layer.cornerRadius   = 10
            icon.clipsToBounds        = true
            icon.image = image
        }
    
}
