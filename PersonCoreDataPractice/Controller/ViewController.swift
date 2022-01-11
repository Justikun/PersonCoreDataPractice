//
//  ViewController.swift
//  PersonCoreDataPractice
//
//  Created by Justin Lowry on 12/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text =  PersonController.shared.person[0].name
    }
    
    // MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text else { return }
        let newPerson = Person(name: name)
        PersonController.shared.add(person: newPerson)
    }
}

