//
//  ViewController.swift
//  ColorizedApp
//
//  Created by MacBook Pro 13 2020 on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {
// MARK: - IB Outlets
    @IBOutlet weak var changingView: UIView!

    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedSlider()
        setupBlueSlider()
        setupGreenSlider()
        changeRedSlider()
        changeGreenSlider()
    }

// MARK: - IB Action
    @IBAction func changeRedSlider() {
        redValueLabel.text = "\(round(redSlider.value * 100)/100)"
        changeColorView()
    }
    private func changeColorView() {
        changingView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 0.75)
    }
    @IBAction func changeBlueSlider() {
        blueValueLabel.text = "\(round(blueSlider.value * 100)/100)"
    changeColorView()
    }
    
    @IBAction func changeGreenSlider() {
        greenValueLabel.text = "\(round(greenSlider.value * 100)/100)"
        changeColorView()
    }
    // MARK: - Private Methods
    private func setupRedSlider() {
        redSlider.value = 0.46
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
    }
    private func setupBlueSlider() {
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
    private func setupGreenSlider() {
        greenSlider.value = 0.46
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
    }
}

