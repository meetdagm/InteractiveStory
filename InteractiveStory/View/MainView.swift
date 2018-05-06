//
//  MainView.swift
//  InteractiveStory
//
//  Created by Dagmawi Nadew-Assefa on 5/5/18.
//  Copyright © 2018 Sason. All rights reserved.
//

import UIKit

class MainView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    Background Image
    let backgroundImage: UIImageView = {
       
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Beginning")
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        return imageView
    }()
    
//    Button Starts Adventure
    let beginButton: UIButton = {
       
        let button = UIButton()
        button.setTitle("Begin Adventure", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 7
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.titleLabel?.font = UIFont(name: "Avenir-Black", size: 16)
        
        return button
    }()
    
    func setupView() {
        
        addSubview(backgroundImage)
        addSubview(beginButton)
        
        backgroundImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        
        beginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        beginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        beginButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -48).isActive = true
        beginButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
    }

}
