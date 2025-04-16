//
//  ViewController.swift
//  part2Pogoda
//
//  Created by Александр Усольцев on 16.04.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var getWeatherButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getWeatherButton.addTarget(self, action: #selector(didTapGetWeatherButton), for: .touchUpInside)
    }
    
    @objc func didTapGetWeatherButton() {
        label.text = "Lo"
        
    }

}

