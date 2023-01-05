//
//  TableViewCell.swift
//  pizzaD
//
//  Created by Ян Нурков on 21.10.2022.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {

    static let reduseID = "MenuTableViewCell"
    
    let iconImageView: UIImageView = {
        let obj = UIImageView()
        obj.translatesAutoresizingMaskIntoConstraints = false
        obj.contentMode = .scaleAspectFit
        obj.clipsToBounds = true
        obj.image = UIImage(named: "pizza")
        obj.layer.cornerRadius = 20
        obj.layer.masksToBounds = true
        return obj
    }()
    
    let label: UILabel = {
        let obj = UILabel()
        obj.translatesAutoresizingMaskIntoConstraints = false
        obj.textColor = UIColor(red: 0.133, green: 0.157, blue: 0.192, alpha: 1)
        obj.font = UIFont(name: "ArialBold", size: 17)
        return obj
    }()
    
    let textField: UILabel = {
        let obj = UILabel()
        obj.backgroundColor = .white
        obj.numberOfLines = 0
        obj.textColor = UIColor(red: 0.665, green: 0.668, blue: 0.679, alpha: 1)
        obj.font = UIFont(name: "Arial", size: 13)
        return obj
    }()
    
    let button: UIButton = {
        let obj = UIButton()
        obj.titleLabel?.font = UIFont(name: "Arial", size: 13)
        obj.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
        obj.layer.borderColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1).cgColor
        obj.layer.borderWidth = 1
        obj.layer.cornerRadius = 6
        return obj
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .white
        addSubview(self.button)
        addSubview(self.label)
        addSubview(self.textField)
        addSubview(self.iconImageView)
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func makeConstraints() {
        self.iconImageView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(16)
            make.bottom.equalToSuperview().offset(-29)
            make.width.equalTo(162)
        }
        
        self.label.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-27)
            make.top.equalToSuperview().offset(16)
            make.width.equalTo(168)
            make.height.equalTo(20)
        }
        
        self.textField.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(8)
            make.right.equalToSuperview().offset(-24)
            make.width.equalTo(171)
            make.height.equalTo(64)
        }
        
        self.button.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-24)
            make.bottom.equalToSuperview().offset(-16)
            make.width.equalTo(87)
            make.height.equalTo(32)
        }
    }
}
