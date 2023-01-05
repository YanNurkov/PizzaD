//
//  BasketTableViewCell.swift
//  pizzaD
//
//  Created by Ян Нурков on 29.11.2022.
//

import UIKit

class BasketTableViewCell: UITableViewCell {

    static let reduseID = "BasketTableViewCell"

    lazy var view: UIView = {
        let obj = UIView()
        obj.backgroundColor = .white
        return obj
    }()
    
    lazy var pizzaIcon: UIImageView = {
        let obj = UIImageView()
        obj.image = UIImage(named: "pizza")
        return obj
    }()
    
    lazy var labelName: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.text = "pizza jkfl;d"
        obj.font = .boldSystemFont(ofSize: 18)
        return obj
    }()
    
    lazy var labelAbout: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.text = "pizza jkfl;djjlk;jjjjjjj"
        obj.numberOfLines = 0
        obj.font = .systemFont(ofSize: 13)
        return obj
    }()
    
    lazy var labelPrice: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        //obj.text = "690"
        obj.font = .boldSystemFont(ofSize: 20)
        return obj
    }()
    
    lazy var lineView: UIView = {
        let obj = UIView()
        obj.backgroundColor = .lightGray
        obj.alpha = 0.4
        return obj
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
        addSubview(view)
        view.addSubview(self.pizzaIcon)
        view.addSubview(self.labelName)
        view.addSubview(self.labelAbout)
        view.addSubview(self.labelPrice)
        view.addSubview(self.lineView)
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func makeConstraints() {
        view.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview()
            make.bottom.equalToSuperview().offset(-10)
        }
        pizzaIcon.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(16)
            make.width.height.equalTo(80)
        }
        labelName.snp.makeConstraints { make in
            make.left.equalTo(pizzaIcon.snp.right).offset(10)
            make.right.equalToSuperview().offset(-16)
            make.top.equalTo(pizzaIcon.snp.top).offset(8)
            make.height.equalTo(20)
        }
        labelAbout.snp.makeConstraints { make in
            make.left.equalTo(pizzaIcon.snp.right).offset(10)
            make.right.equalToSuperview().offset(-16)
            make.top.equalTo(labelName.snp.bottom).offset(5)
            make.height.equalTo(40)
        }
        lineView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(0.2)
            make.top.equalTo(pizzaIcon.snp.bottom).offset(8)
        }
        labelPrice.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-50)
            make.top.equalTo(lineView.snp.bottom).offset(10)
            make.height.equalTo(23)
        }
    }
}
