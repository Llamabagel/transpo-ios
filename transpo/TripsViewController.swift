//
// Created by Derek Ellis on 2019-05-02.
// Copyright (c) 2019 Llamabagel. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController {

    var stopId: String?

    let textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        view.addSubview(textLabel)

        //textLabel.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.text = stopId
    }

}
