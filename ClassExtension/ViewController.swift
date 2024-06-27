//
//  ViewController.swift
//  ClassExtension
//
//  Created by E5000855 on 27/06/24.
//

import UIKit

class ViewController: UIViewController {

    private let radiusTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter radius"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .decimalPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private let calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Calculate Area", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.addTarget(self, action: #selector(calculateArea), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let resultLabel: UILabel = {
        let label = UILabel()
        label.text = "Area will be shown here"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(radiusTextField)
        view.addSubview(calculateButton)
        view.addSubview(resultLabel)
        
        NSLayoutConstraint.activate([
            radiusTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            radiusTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            radiusTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            radiusTextField.heightAnchor.constraint(equalToConstant: 40),
            
            calculateButton.topAnchor.constraint(equalTo: radiusTextField.bottomAnchor, constant: 20),
            calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            calculateButton.widthAnchor.constraint(equalToConstant: 150),
            calculateButton.heightAnchor.constraint(equalToConstant: 40),
            
            resultLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 50),
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            resultLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }

    @objc private func calculateArea() {
        guard let radiusText = radiusTextField.text else {
            resultLabel.text = "Enter radius"
            return
        }
        
        guard let radius = Double(radiusText) else {
            resultLabel.text = "Invalid input"
            return
        }
        
        guard radius > 0 else {
            resultLabel.text = "Radius must be greater than zero"
            return
        }
        
        let circle = Circle(radius: radius)
        let area = circle.area
        resultLabel.text = String(format: "Area: %.2f", area)
    }
    
    func calculateAreaT() {
        guard let radiusText = radiusTextField.text else {
            resultLabel.text = "Enter radius"
            return
        }
        
        guard let radius = Double(radiusText) else {
            resultLabel.text = "Invalid input"
            return
        }
        
        guard radius > 0 else {
            resultLabel.text = "Radius must be greater than zero"
            return
        }
        
        let circle = Circle(radius: radius)
        let area = circle.area
        resultLabel.text = String(format: "Area: %.2f", area)
    }
}

