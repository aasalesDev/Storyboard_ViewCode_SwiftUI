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
        andersonImageView.contentMode = .scaleAspectFill
        andersonImageView.clipsToBounds = true
        andersonImageView.layer.borderWidth = 5
        andersonImageView.layer.borderColor = UIColor.white.cgColor
        andersonImageView.image = UIImage(named: "anderson")
        
        phoneImage.image = UIImage(systemName: "phone.fill")
        phoneImage.tintColor = .green
        
        emailImage.image = UIImage(systemName: "envelope.fill")
        emailImage.tintColor = .green
    
    }
    
    private func configureLabels() {
        nameLabel.text = personModel.getPersonInformation().name
        nameLabel.backgroundColor = personModel.getBackgroundColor()
        
        titleLabel.backgroundColor = personModel.getBackgroundColor()
        titleLabel.text = personModel.getPersonInformation().title

        phoneLabel.layer.cornerRadius = phoneLabel.frame.size.height/2
        phoneLabel.clipsToBounds = true
        phoneLabel.text = personModel.getPersonInformation().phone
        phoneLabel.backgroundColor = .white
       
        
        emailLabel.layer.cornerRadius = emailLabel.frame.size.height/2
        emailLabel.clipsToBounds = true
        emailLabel.text = personModel.getPersonInformation().email
        emailLabel.backgroundColor = .white
    }

}

