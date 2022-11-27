//
//  FeedViewController.swift
//  Navigation
//
//  Created by Кирилл Грецкий on 27.11.2022.
//

import UIKit

class FeedViewController : UIViewController {
    
    var dataSource = Post(title: "Feed view")
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "First Text"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Post", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 14
        return button
    }()
    
    
    func setupButton() {
        button.addTarget(self, action: #selector(tapOnBlueButton), for: .touchUpInside)
        setupConstraints()
    }
    
    @objc func tapOnBlueButton() {
        let exampleController = PostViewController()
        // 1 Иерархическая навигация
        navigationController?.pushViewController(exampleController, animated: true)
        // 2 Модальная навигация
        //navigationController?.present(exampleController, animated: true)
    }
    
    func setupConstraints() {
        view.addSubview(button)
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupButton()
        titleLabel.text = dataSource.title
        button.frame = CGRect(x: 150, y: 400, width: 100, height: 50)
    }
    
}
