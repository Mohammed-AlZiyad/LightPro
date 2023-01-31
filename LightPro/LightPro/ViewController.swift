//
//  ViewController.swift
//  LightPro
//
//  Created by Mohammed AlZiyad on 06/07/1444 AH.
//

import UIKit
var lightOn = true
class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
        // Do any additional setup after loading the view.
    }
    
    func UpdateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        lightOn.toggle()
        UpdateUI()
    }
    
}

