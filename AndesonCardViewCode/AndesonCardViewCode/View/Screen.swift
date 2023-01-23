//
//  Screeb.swift
//  AndesonCardViewCode
//
//  Created by Anderson Sales on 23/01/23.
//

import UIKit

class Screen: UIView {
    
    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.layer.cornerRadius = 75
        image.contentMode = .scaleAspectFill
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 5
        image.image = UIImage(named: "anderson")
        
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.text = "Anderson Sales"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.text = "iOS Developer"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    lazy var phoneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.text = "+55 12 99206 4867"
        label.backgroundColor = .white
        label.layer.cornerRadius = 26
        label.textAlignment = .center
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.text = "aasalesdev@gmail.com"
        label.backgroundColor = .white
        label.layer.cornerRadius = 26
        label.textAlignment = .center
        return label
    }()
    
    lazy var phoneImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.image = UIImage(systemName: "phone.fill")
        image.tintColor = .green
        
        return image
    }()
    
    lazy var emailImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.image = UIImage(systemName: "envelope.fill")
        image.tintColor = .green
        
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        setUpConstraints()
    }
    
    private func addSubViews() {
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(titleLabel)
        addSubview(phoneLabel)
        addSubview(emailLabel)
        addSubview(phoneImageView)
        addSubview(emailImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraints() {
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 75),
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            nameLabel.heightAnchor.constraint(equalToConstant: 52),
            
            titleLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: -10),
            titleLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 52),
            
            phoneLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            phoneLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            phoneLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            phoneLabel.heightAnchor.constraint(equalToConstant: 52),
            
            emailLabel.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 25),
            emailLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            emailLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            emailLabel.heightAnchor.constraint(equalToConstant: 52),
            
            phoneImageView.topAnchor.constraint(equalTo: phoneLabel.topAnchor, constant: 13),
            phoneImageView.leadingAnchor.constraint(equalTo: phoneLabel.leadingAnchor, constant: 50),
            phoneImageView.heightAnchor.constraint(equalToConstant: 26),
            phoneImageView.widthAnchor.constraint(equalToConstant: 26),
            
            emailImageView.topAnchor.constraint(equalTo: emailLabel.topAnchor, constant: 13),
            emailImageView.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor, constant: 50),
            emailImageView.heightAnchor.constraint(equalToConstant: 26),
            emailImageView.widthAnchor.constraint(equalToConstant: 26),
            
            
        ])
    }
}
