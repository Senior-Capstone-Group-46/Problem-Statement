//
//  ScheduleBrowserTableViewCell.swift
//  C7FIT
//
//  Created by Michael Lee on 1/25/17.
//  Copyright © 2017 Brandon Lee. All rights reserved.
//

import UIKit

class ScheduleBrowserTableViewCell: UITableViewCell {

    // MARK: - Properties

    lazy var scheduleTitle = UILabel()
    lazy var schedulePicture = UIImageView()
    lazy var scheduleLink = UIButton()

    // MARK: - Initialization

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        print("browser cell")
        setup()
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Layout

    func setup() {

        let imageName = "club front.jpg"
        let bgImage = UIImage(named: imageName)

        if bgImage != nil {
            schedulePicture.image = bgImage!
            schedulePicture.center = self.center

            addSubview(schedulePicture)
            print("image success")
        } else {
            print("image error")
        }

        scheduleLink.setImage(bgImage, for: .normal)
        addSubview(scheduleLink)

        scheduleTitle.text = "Monthly Schedule"
        scheduleTitle.textAlignment = NSTextAlignment.center
        addSubview(scheduleTitle)

    }

    func setupConstraints() {
        scheduleTitle.translatesAutoresizingMaskIntoConstraints = false
        let titleLead = scheduleTitle.leftAnchor.constraint(equalTo: leftAnchor, constant:10)
        let titleTrail = scheduleTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant:-10)
        let titleTop = scheduleTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20)
        NSLayoutConstraint.activate([titleLead, titleTrail, titleTop])

        scheduleLink.translatesAutoresizingMaskIntoConstraints = false
        let linkLead = scheduleLink.leftAnchor.constraint(equalTo: leftAnchor, constant:0)
        let linkTrail = scheduleLink.trailingAnchor.constraint(equalTo: trailingAnchor, constant:0)
        let linkTop = scheduleLink.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        let linkBot = scheduleLink.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        NSLayoutConstraint.activate([linkLead, linkTrail, linkTop, linkBot])

    }

}