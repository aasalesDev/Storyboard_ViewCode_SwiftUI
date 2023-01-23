//
//  ViewController.swift
//  AndesonCardViewCode
//
//  Created by Anderson Sales on 23/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var screen: Screen?
    private var color = UIColor(red: 0.20, green: 0.60, blue: 0.86, alpha: 1.00)
    
    override func loadView() {
        screen = Screen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.backgroundColor = color
    }
}

