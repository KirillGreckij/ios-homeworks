//
//  PostViewController.swift
//  Navigation
//
//  Created by Кирилл Грецкий on 27.11.2022.
//

import UIKit

class PostViewController : UIViewController {
    
    var dataSource = Post(title: "News content")
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "First Text"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
        titleLabel.text = dataSource.title
    }
    
    func setupConstraints() {
        view.addSubview(titleLabel)
        
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
