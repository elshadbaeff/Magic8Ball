//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Elshad Babaev on 27.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [
        UIImage(named: "ball1")!,
        UIImage(named: "ball2")!,
        UIImage(named: "ball3")!,
        UIImage(named: "ball4")!,
        UIImage(named: "ball5")!,
    ]
    
    let askButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.setTitle("Ask", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32)
        button.backgroundColor =  .gray
        button.titleLabel?.textColor = .black
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(askButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let magicBallImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "ball1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    var handlerLabel: UILabel = {
            let label = UILabel()
            label.text = "Ask me something..."
        label.textColor = .black
            label.font = UIFont.systemFont(ofSize: 30, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(askButton)
        view.addSubview(magicBallImage)
        view.addSubview(handlerLabel)
        
        
        NSLayoutConstraint.activate([
            handlerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            handlerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            askButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            askButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            magicBallImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            magicBallImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        
        
        ])
    }
    
    
    @objc func askButtonTapped() {
       magicBallImage.image = ballArray.randomElement()
    }
}

