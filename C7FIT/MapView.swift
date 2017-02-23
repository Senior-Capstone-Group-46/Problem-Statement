//
//  Map.swift
//  C7FIT
//
//  Created by Michael Lee on 2/15/17.
//  Copyright © 2017 Brandon Lee. All rights reserved.
//

import UIKit
import MapKit

class MapView: UIView, MKMapViewDelegate {
    // MARK: - Properties
    
    var titleLabel: UILabel = UILabel()
    var mapView: MKMapView = MKMapView()
    
    var secondsQuantity: UILabel = UILabel()
    var distanceQuantity: UILabel = UILabel()
    var paceQuantity: UILabel = UILabel()
    
    var startButton: UIButton = UIButton()
    var stopButton: UIButton = UIButton()
    
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
        //title
//        titleLabel.text = "Map Stuff"
//        addSubview(titleLabel)
        
        startButton.setTitle("Start Run", for: .normal)
        startButton.backgroundColor = .green
        addSubview(startButton)
        
        stopButton.setTitle("Stop Run", for: .normal)
        stopButton.backgroundColor = .red
        addSubview(stopButton)
        
        secondsQuantity.text = "Seconds: "
        addSubview(secondsQuantity)
        
        distanceQuantity.text = "Distance: "
        addSubview(distanceQuantity)
        
        paceQuantity.text = "Pace: "
        addSubview(paceQuantity)
        //mapview
        
        mapView.mapType = MKMapType.standard
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        
        // Or, if needed, we can position map in the center of the view
//        mapView.center = view.center
        
        addSubview(mapView)
    }
    
    func setupConstraints() {
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        let centerTitleX = titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
//        let centerTitleY = titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
//        NSLayoutConstraint.activate([centerTitleX, centerTitleY])
        let screenWidth = UIScreen.main.bounds.size.width
        print(screenWidth)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        let startLeft = startButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 0)
        let startTop = startButton.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        let startRight = startButton.rightAnchor.constraint(equalTo: leftAnchor, constant: screenWidth/2)
        NSLayoutConstraint.activate([startLeft, startTop, startRight])
        
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        let stopLeft = stopButton.leftAnchor.constraint(equalTo: startButton.rightAnchor, constant: 0)
        let stopTop = stopButton.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        let stopRight = stopButton.rightAnchor.constraint(equalTo: rightAnchor, constant: 0)
        NSLayoutConstraint.activate([stopLeft, stopTop, stopRight])
        
        distanceQuantity.translatesAutoresizingMaskIntoConstraints = false
        let distanceLead = distanceQuantity.leftAnchor.constraint(equalTo: leftAnchor, constant: 10)
        let distanceTop = distanceQuantity.topAnchor.constraint(equalTo: startButton.bottomAnchor, constant: 10)
        NSLayoutConstraint.activate([distanceLead, distanceTop])
        
        secondsQuantity.translatesAutoresizingMaskIntoConstraints = false
        let secondsLead = secondsQuantity.leftAnchor.constraint(equalTo: leftAnchor, constant: 10)
        let secondsTop = secondsQuantity.topAnchor.constraint(equalTo: distanceQuantity.bottomAnchor, constant: 10)
        NSLayoutConstraint.activate([secondsLead, secondsTop])
        
        paceQuantity.translatesAutoresizingMaskIntoConstraints = false
        let paceLead = paceQuantity.leftAnchor.constraint(equalTo: leftAnchor, constant: 10)
        let paceTop = paceQuantity.topAnchor.constraint(equalTo: secondsQuantity.bottomAnchor, constant: 10)
        NSLayoutConstraint.activate([paceLead, paceTop])
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
//        let mapHeight = mapView.heightAnchor.constraint(equalToConstant: 500)
//        let mapWidth = mapView.widthAnchor.constraint(equalToConstant: 300)
        let mapLeftMargin = mapView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10)
        let mapTopMargin = mapView.topAnchor.constraint(equalTo: paceQuantity.bottomAnchor, constant: 10)
        let mapBottom = mapView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        let mapTrailingMargin = mapView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        NSLayoutConstraint.activate([mapTopMargin,mapTrailingMargin,mapBottom,mapLeftMargin])
//        NSLayoutConstraint.activate([mapHeight,mapTrailingMargin,mapBottom,mapLeftMargin])
        
    }

}