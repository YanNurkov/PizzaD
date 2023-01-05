//
//  PizzaViewController.swift
//  pizzaD
//
//  Created by Ян Нурков on 27.11.2022.
//

import UIKit
import CoreData

class PizzaViewController: UIViewController {
    
//    private let coreDataManager = CoreDataManager()
//
//    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var price = Int()
    var name = String()
    var about = String()
    var image = String()
    
    
    
    
    var isSelected = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1.00)
        configView()
        constraints()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
       {
           
           let touch = touches.first
           if touch?.view != self.infoView
           { UIView.transition(with: view, duration: 0.5, options: .transitionCrossDissolve, animations: {
               self.infoView.alpha = 0
           }) }
       }
    
    func configView() {
        view.addSubview(closeButton)
        view.addSubview(picture)
        view.addSubview(nameLabel)
        view.addSubview(text)
        view.addSubview(button)
        view.addSubview(viewSize)
        viewSize.addSubview(buttonSmall)
        viewSize.addSubview(buttonMedium)
        viewSize.addSubview(buttonLarge)
        view.addSubview(viewDough)
        viewDough.addSubview(buttonTraditional)
        viewDough.addSubview(buttonThin)
        view.addSubview(infoPizza)
        view.addSubview(info)
        view.addSubview(infoView)
        infoView.addSubview(infoViewName)
        infoView.addSubview(info100g)
        infoView.addSubview(infoTNV)
        infoView.addSubview(infoSquirrels)
        infoView.addSubview(infoFats)
        infoView.addSubview(infoCarbohydrates)
        infoView.addSubview(infoWeight)
        infoView.addSubview(kcal)
        infoView.addSubview(squirrels)
        infoView.addSubview(fats)
        infoView.addSubview(carbohydrates)
        infoView.addSubview(weight)
    }
    
    func constraints() {
        closeButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(16)
            make.width.height.equalTo(40)
        }
        picture.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.top.equalTo(closeButton.snp.bottom).offset(16)
            make.height.equalTo(250)
        }
        nameLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.top.equalTo(picture.snp.bottom).offset(20)
            make.height.equalTo(33)
        }
        text.snp.makeConstraints { make in
            make.left.right.equalTo(nameLabel)
            make.top.equalTo(infoPizza.snp.bottom).offset(8)
            make.height.equalTo(30)
        }
        button.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-45)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(50)
        }
        viewSize.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.top.equalTo(text.snp.bottom).offset(16)
            make.height.equalTo(40)
        }
        buttonSmall.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(2)
            make.top.equalToSuperview().offset(2)
            make.bottom.equalToSuperview().offset(-2)
            make.width.equalTo(110)
        }
        
        buttonMedium.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(2)
            make.bottom.equalToSuperview().offset(-2)
            make.width.equalTo(110)
            make.center.equalToSuperview()
        }
        
        buttonLarge.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(2)
            make.bottom.equalToSuperview().offset(-2)
            make.right.equalToSuperview().offset(-2)
            make.width.equalTo(110)
        }
        
        viewDough.snp.makeConstraints { make in
            make.top.equalTo(viewSize.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(40)
        }
        
        buttonTraditional.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(2)
            make.top.equalToSuperview().offset(2)
            make.bottom.equalToSuperview().offset(-2)
            make.width.equalTo(170)
        }
        
        buttonThin.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(2)
            make.bottom.equalToSuperview().offset(-2)
            make.right.equalToSuperview().offset(-2)
            make.width.equalTo(170)
        }
        
        infoPizza.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.top.equalTo(nameLabel.snp.bottom).offset(5)
            make.height.equalTo(14)
        }
        
        info.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-16)
            make.top.equalTo(nameLabel.snp.top)
            make.width.height.equalTo(33)
        }
        
        infoView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.left.equalToSuperview().offset(50)
            make.right.equalToSuperview().offset(-50)
            make.center.equalToSuperview()
        }
        
        infoViewName.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(10)
            make.height.equalTo(23)
        }
        
        info100g.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(infoViewName.snp.bottom).offset(8)
            make.height.equalTo(15)
        }
        
        infoTNV.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(info100g.snp.bottom).offset(15)
            make.height.equalTo(15)
        }
        
        infoSquirrels.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(infoTNV.snp.bottom).offset(8)
            make.height.equalTo(15)
        }
        
        infoFats.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(infoSquirrels.snp.bottom).offset(8)
            make.height.equalTo(15)
        }
        
        infoCarbohydrates.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(infoFats.snp.bottom).offset(8)
            make.height.equalTo(15)
        }
        
        infoWeight.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(infoCarbohydrates.snp.bottom).offset(8)
            make.height.equalTo(15)
        }
        
        kcal.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(info100g.snp.bottom).offset(15)
            make.height.equalTo(15)
        }
        
        squirrels.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(infoTNV.snp.bottom).offset(8)
            make.height.equalTo(15)
        }
        
        fats.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(infoSquirrels.snp.bottom).offset(8)
            make.height.equalTo(15)
        }
        
        carbohydrates.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(infoFats.snp.bottom).offset(8)
            make.height.equalTo(15)
        }
        
        weight.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(infoCarbohydrates.snp.bottom).offset(8)
            make.height.equalTo(15)
        }
    }
    
    lazy var closeButton: UIButton = {
        let obj = UIButton()
        obj.backgroundColor = .white
        obj.layer.cornerRadius = 20
        obj.layer.masksToBounds = true
        obj.setImage(UIImage(named: "chevron"), for: .normal)
        obj.layer.shadowRadius = 2
        obj.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        obj.layer.shadowColor = UIColor.lightGray.cgColor
        obj.layer.shadowOpacity = 0.5
        obj.layer.masksToBounds = false
        obj.addTarget(self, action: #selector(dismissView), for: .touchDown)
        return obj
    }()

    lazy var picture: UIImageView = {
        let obj = UIImageView()
        obj.layer.masksToBounds = true
        obj.layer.cornerRadius = 20
        return obj
    }()
    
    lazy var nameLabel: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.font = .boldSystemFont(ofSize: 30)
        return obj
    }()
    
    lazy var text: UILabel = {
        let obj = UILabel()
        obj.backgroundColor = .clear
        obj.numberOfLines = 0
        obj.textColor = .black
        obj.font = UIFont(name: "Arial", size: 13)
        return obj
    }()
    
    lazy var button: UIButton = {
        let obj = UIButton()
        obj.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1)
        obj.setTitle("in basket", for: .normal)
        obj.layer.cornerRadius = 25
        obj.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        obj.addTarget(self, action: #selector(addBasket), for: .touchDown)
        return obj
    }()
    
    lazy var viewSize: UIView = {
        let obj = UIView()
        obj.backgroundColor = .white
        obj.layer.cornerRadius = 20
        return obj
    }()
    
    lazy var buttonSmall: UIButton = {
        let obj = UIButton()
        obj.setTitle("Small", for: .normal)
        obj.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
        obj.titleLabel?.font = .boldSystemFont(ofSize: 15)
        obj.layer.cornerRadius = 18
        obj.addTarget(self, action: #selector(buttonTappedSmall), for: .touchDown)
        obj.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2)
        obj.addTarget(self, action: #selector(tapped), for: .touchDown)
        return obj
    }()
    
    lazy var buttonMedium: UIButton = {
        let obj = UIButton()
        obj.setTitle("Medium", for: .normal)
        obj.setTitleColor(.black, for: .normal)
        obj.titleLabel?.font = .systemFont(ofSize: 15)
        obj.layer.cornerRadius = 18
        obj.addTarget(self, action: #selector(buttonTappedAverage), for: .touchDown)
        obj.addTarget(self, action: #selector(tapped), for: .touchDown)
        return obj
    }()
    
    lazy var buttonLarge: UIButton = {
        let obj = UIButton()
        obj.setTitle("Large", for: .normal)
        obj.setTitleColor(.black, for: .normal)
        obj.titleLabel?.font = .systemFont(ofSize: 15)
        obj.layer.cornerRadius = 18
        obj.addTarget(self, action: #selector(buttonTappedBig), for: .touchDown)
        obj.addTarget(self, action: #selector(tapped), for: .touchDown)
        return obj
    }()
    
    lazy var viewDough: UIView = {
        let obj = UIView()
        obj.backgroundColor = .white
        obj.layer.cornerRadius = 20
        return obj
    }()
    
    lazy var buttonTraditional: UIButton = {
        let obj = UIButton()
        obj.setTitle("Traditional", for: .normal)
        obj.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
        obj.titleLabel?.font = .boldSystemFont(ofSize: 15)
        obj.layer.cornerRadius = 18
        obj.addTarget(self, action: #selector(buttonTappedTraditional), for: .touchDown)
        obj.addTarget(self, action: #selector(tapped), for: .touchDown)
        obj.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2)
        return obj
    }()
    
    
    lazy var buttonThin: UIButton = {
        let obj = UIButton()
        obj.setTitle("Thin", for: .normal)
        obj.setTitleColor(.black, for: .normal)
        obj.titleLabel?.font = .systemFont(ofSize: 15)
        obj.layer.cornerRadius = 18
        obj.addTarget(self, action: #selector(buttonTappedThin), for: .touchDown)
        obj.addTarget(self, action: #selector(tapped), for: .touchDown)
        return obj
    }()
    
    lazy var infoPizza: UILabel = {
        let obj = UILabel()
        obj.text = "Small 25 cm, traditional dough, 340 g"
        obj.backgroundColor = .clear
        obj.numberOfLines = 0
        obj.textColor = .gray
        obj.font = UIFont(name: "Arial", size: 13)
        return obj
    }()
    
    lazy var info: UIButton = {
        let obj = UIButton()
        obj.setImage(UIImage(systemName: "info.circle"), for: .normal)
        obj.addTarget(self, action: #selector(infoValue), for: .touchDown)
        return obj
    }()
    
    lazy var infoView: UIView = {
        let obj = UIView()
        obj.backgroundColor = .darkGray
        obj.layer.cornerRadius = 20
        obj.alpha = 0
        return obj
    }()
    
    lazy var infoViewName: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.font = .boldSystemFont(ofSize: 20)
        obj.textColor = .white
        return obj
    }()
    
    lazy var info100g: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.font = .systemFont(ofSize: 13)
        obj.text = "Nutritional value per 100 g"
        obj.textColor = .lightGray
        return obj
    }()
    
    lazy var infoTNV: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.font = .systemFont(ofSize: 13)
        obj.text = "The nutritional value"
        obj.textColor = .white
        return obj
    }()
    
    lazy var infoSquirrels: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.font = .systemFont(ofSize: 13)
        obj.text = "Squirrels"
        obj.textColor = .white
        return obj
    }()
    
    lazy var infoFats: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.font = .systemFont(ofSize: 13)
        obj.text = "Fats"
        obj.textColor = .white
        return obj
    }()
    
    lazy var infoCarbohydrates: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.font = .systemFont(ofSize: 13)
        obj.text = "Carbohydrates"
        obj.textColor = .white
        return obj
    }()
    
    lazy var infoWeight: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .left
        obj.font = .systemFont(ofSize: 13)
        obj.text = "Weight"
        obj.textColor = .white
        return obj
    }()
    
    lazy var kcal: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .right
        obj.font = .systemFont(ofSize: 13)
        obj.text = "281,3 kcal"
        obj.textColor = .white
        return obj
    }()
    
    lazy var squirrels: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .right
        obj.font = .systemFont(ofSize: 13)
        obj.text = "10,2 g"
        obj.textColor = .white
        return obj
    }()
    
    lazy var fats: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .right
        obj.font = .systemFont(ofSize: 13)
        obj.text = "10,5 g"
        obj.textColor = .white
        return obj
    }()
    
    lazy var carbohydrates: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .right
        obj.font = .systemFont(ofSize: 13)
        obj.text = "34,4 g"
        obj.textColor = .white
        return obj
    }()
    
    lazy var weight: UILabel = {
        let obj = UILabel()
        obj.textAlignment = .right
        obj.font = .systemFont(ofSize: 13)
        obj.text = "340 g"
        obj.textColor = .white
        return obj
    }()
    
    @objc func dismissView() {
        self.dismiss(animated: true)
    }
    
    @objc func buttonTappedBig() {
        buttonLarge.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2)
        buttonLarge.titleLabel?.font     = .boldSystemFont(ofSize: 15)
        buttonLarge.layer.borderWidth = 0
        buttonLarge.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
        
        buttonMedium.backgroundColor = .clear
        buttonMedium.titleLabel?.font     = .systemFont(ofSize: 15)
        buttonMedium.layer.borderWidth = 0
        buttonMedium.setTitleColor(.black, for: .normal)
        
        buttonSmall.backgroundColor = .clear
        buttonSmall.titleLabel?.font     = .systemFont(ofSize: 15)
        buttonSmall.layer.borderWidth = 0
        buttonSmall.setTitleColor(.black, for: .normal)
    }
    
    @objc func buttonTappedAverage() {
        buttonMedium.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2)
        buttonMedium.titleLabel?.font     = .boldSystemFont(ofSize: 15)
        buttonMedium.layer.borderWidth = 0
        buttonMedium.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
        
        buttonLarge.backgroundColor = .clear
        buttonLarge.titleLabel?.font     = .systemFont(ofSize: 15)
        buttonLarge.layer.borderWidth = 0
        buttonLarge.setTitleColor(.black, for: .normal)
        
        buttonSmall.backgroundColor = .clear
        buttonSmall.titleLabel?.font     = .systemFont(ofSize: 15)
        buttonSmall.layer.borderWidth = 0
        buttonSmall.setTitleColor(.black, for: .normal)
    }
    
    @objc func buttonTappedSmall() {
        buttonSmall.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2)
        buttonSmall.titleLabel?.font     = .boldSystemFont(ofSize: 15)
        buttonSmall.layer.borderWidth = 0
        buttonSmall.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
        
        buttonLarge.backgroundColor = .clear
        buttonLarge.titleLabel?.font     = .systemFont(ofSize: 15)
        buttonLarge.layer.borderWidth = 0
        buttonLarge.setTitleColor(.black, for: .normal)
        
        buttonMedium.backgroundColor = .clear
        buttonMedium.titleLabel?.font     = .systemFont(ofSize: 15)
        buttonMedium.layer.borderWidth = 0
        buttonMedium.setTitleColor(.black, for: .normal)
    }
    
    @objc func buttonTappedTraditional() {
        buttonTraditional.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2)
        buttonTraditional.titleLabel?.font     = .boldSystemFont(ofSize: 15)
        buttonTraditional.layer.borderWidth = 0
        buttonTraditional.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
        
        buttonThin.backgroundColor = .clear
        buttonThin.titleLabel?.font     = .systemFont(ofSize: 15)
        buttonThin.layer.borderWidth = 0
        buttonThin.setTitleColor(.black, for: .normal)
    }
    
    @objc func buttonTappedThin() {
        buttonThin.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2)
        buttonThin.titleLabel?.font     = .boldSystemFont(ofSize: 15)
        buttonThin.layer.borderWidth = 0
        buttonThin.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
        
        buttonTraditional.backgroundColor = .clear
        buttonTraditional.titleLabel?.font     = .systemFont(ofSize: 15)
        buttonTraditional.layer.borderWidth = 0
        buttonTraditional.setTitleColor(.black, for: .normal)
    }
    
    @objc func tapped() {
        
        if buttonSmall.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) && buttonTraditional.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) {
            
            button.setTitle("In basket on " + String(price) + " $", for: .normal)
            infoPizza.text = "Small 25 cm, traditional dough, 340 g"
            weight.text = "340 g"
        }
        if buttonSmall.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2)  && buttonThin.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) {
            let totalPrice = price + 1
            button.setTitle("In basket on " + String(totalPrice) + " $", for: .normal)
            infoPizza.text = "Small 25 cm, thin dough, 300 g"
            weight.text = "300 g"
        }
        if buttonMedium.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) && buttonTraditional.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) {
            let totalPrice = Double(price) + 2.5
            button.setTitle("In basket on " + String(totalPrice) + " $", for: .normal)
            infoPizza.text = "Medium 30 cm, traditional dough, 640 g"
            weight.text = "640 g"
        }
        if buttonMedium.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) && buttonThin.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) {
            let totalPrice = price + 3
            button.setTitle("In basket on " + String(totalPrice) + " $", for: .normal)
            infoPizza.text = "Medium 30 cm, thin dough, 530 g"
            weight.text = "530 g"
        }
        if buttonLarge.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) && buttonTraditional.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) {
            let totalPrice = Double(price) + 3.5
            button.setTitle("In basket on " + String(totalPrice) + " $", for: .normal)
            infoPizza.text = "Large 35 cm, traditional dough, 880 g"
            weight.text = "880 g"
        }
        if buttonLarge.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) && buttonThin.backgroundColor == UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) {
            let totalPrice = Double(price) + 4.5
            button.setTitle("In basket on " + String(totalPrice) + " $", for: .normal)
            infoPizza.text = "Large 35 cm, thin dough, 760 g"
            weight.text = "760 g"
        }
        
       
    }
   
    @objc func infoValue() {
        self.infoView.alpha = 1
    }
    
    @objc func addBasket() {
        self.dismiss(animated: true)
    }
}


//extension PizzaViewController {
//    private func saveToCoreData() {
//        do {
//            let order = NewOrder(context: context)
//            order.aboutPizza = self.about
//            order.name = self.name
//            order.price = Int64(self.price)
//            order.image = self.image
//            try context.save()
//            print("SAVE")
//        } catch {
//            print("Error SAVE")
//        }
//        self.view.reloadInputViews()
//    }
//}
