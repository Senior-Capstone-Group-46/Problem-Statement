//
//  ClubContactCell.swift
//  C7FIT
//
//  Created by Michael Lee on 2/1/17.
//  Copyright © 2017 Brandon Lee. All rights reserved.
//

import UIKit

class ClubContactCell: UITableViewCell {

    // MARK: - Properties

    var contactButton = UIButton()

    // MARK: - Initialization

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Layout

    func setup() {
        contactButton.backgroundColor = .white
        contactButton.setTitle("Contact Us", for: .normal)
        contactButton.setTitleColor(.black, for: .normal)
        addSubview(contactButton)
    }

    func setupConstraints() {
        contactButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactButton.leftAnchor.constraint(equalTo: leftAnchor),
            contactButton.rightAnchor.constraint(equalTo: rightAnchor),
            contactButton.topAnchor.constraint(equalTo: topAnchor),
            contactButton.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
