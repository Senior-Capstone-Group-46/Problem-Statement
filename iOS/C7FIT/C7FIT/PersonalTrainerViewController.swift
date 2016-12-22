//
//  PersonalTrainerViewController.swift
//  C7FIT
//
//  Created by Brandon Lee on 12/22/16.
//  Copyright © 2016 Brandon Lee. All rights reserved.
//

import UIKit

class PersonalTrainerViewController: UIViewController {
    
    var personalTrainerView = PersonalTrainerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Personal Trainer"
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 98/255, green: 65/255, blue: 133/255, alpha: 1)
        
        self.view.addSubview(personalTrainerView)
        setupConstraints()
        self.view.setNeedsUpdateConstraints()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupConstraints() {
        personalTrainerView.translatesAutoresizingMaskIntoConstraints = false
        let centerViewX = personalTrainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let centerViewY = personalTrainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        NSLayoutConstraint.activate([centerViewX, centerViewY])
    }
}
