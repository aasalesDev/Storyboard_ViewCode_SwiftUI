//
//  ViewController.swift
//  AndersonCardStoryboard
//
//  Created by Anderson Sales on 23/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var andersonImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneImage: UIImageView!
    @IBOutlet weak var emailImage: UIImageView!
    
    private var personModel: PersonModel = PersonModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackground()
        configureImage()
        configureLabels()
        
    }
    
    private func configureBackground() {
        view.backgroundColor = personModel.getBackgroundColor()
    }
    
    private func configureImage(){
        andersonImageView.layer.cornerRadius = andersonImageView.frame.size.height/2
        andersonImageView.clipsToBounds = true
        andersonImageView.layer.borderWidth = 5
        andersonImageView.layer.borderColor = UIColor.white.cgColor
    
    }
    
    private func configureLabels() {
        nameLabel.backgroundColor = personModel.getBackgroundColor()
        titleLabel.backgroundColor = personModel.getBackgroundColor()
        phoneLabel.layer.cornerRadius = phoneLabel.frame.size.height/2
        emailLabel.layer.cornerRadius = emailLabel.frame.size.height/2
    }
}

