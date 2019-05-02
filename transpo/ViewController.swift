//
//  ViewController.swift
//  transpo
//
//  Created by Derek Ellis on 2019-05-01.
//  Copyright © 2019 Llamabagel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let launchButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        contentView.addSubview(textLabel)
        contentView.addSubview(launchButton)
        view.addSubview(contentView)
        
        setupAutoLayout()
    }
    
    func setupAutoLayout() {
        contentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: view.frame.height / 3).isActive = true
        contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        textLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true

        launchButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        launchButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
    }
    
}

