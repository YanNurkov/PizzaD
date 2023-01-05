//
//  VKViewController.swift
//  pizzaD
//
//  Created by Ян Нурков on 01.12.2022.
//

import UIKit
import SafariServices

class VKViewController: UIViewController {

    private var safariVC: SFSafariViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        addChild(safariVC)
        self.view.addSubview(safariVC.view)
        self.safariVC.didMove(toParent: self)
        self.safariVC.view.translatesAutoresizingMaskIntoConstraints = false
        self.safariVC.view.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.safariVC.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.safariVC.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.safariVC.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
    }

    init(safariVC: SFSafariViewController) {
        self.safariVC = safariVC
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
