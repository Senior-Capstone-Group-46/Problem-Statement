//
//  HeartRateView.swift
//  C7FIT
//
//  Created by Michael Lee on 2/15/17.
//  Copyright © 2017 Brandon Lee. All rights reserved.
//

import UIKit

class HeartRateView: UIView {
    // MARK: - Properties

    var titleLabel = UILabel()

    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // MARK: - Layout

    func setup() {
        titleLabel.text = "Heart Rate Stuff"
        addSubview(titleLabel)
    }

    func setupConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        let centerTitleX = titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        let centerTitleY = titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        NSLayoutConstraint.activate([centerTitleX, centerTitleY])
    }

}
