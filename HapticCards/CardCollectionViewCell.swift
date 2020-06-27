//
//  CardCollectionViewCell.swift
//  HapticCards
//
//  Created by Dheeraj Kumar Sharma on 27/06/20.
//  Copyright © 2020 Dheeraj Kumar Sharma. All rights reserved.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    let CardView:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .white
        v.layer.cornerRadius = 20
        return v
    }()
    
    let CustomImage:UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 20
        img.layer.masksToBounds = true
        return img
    }()
    
    let overLay:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor(white: 0, alpha: 0.4)
        v.layer.cornerRadius = 20
        return v
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(CardView)
        CardView.addSubview(CustomImage)
        CardView.addSubview(overLay)
        setUpConstraints()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            CardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            CardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant:  -15),
            CardView.topAnchor.constraint(equalTo: topAnchor, constant: 7),
            CardView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -7),
            
            CustomImage.leadingAnchor.constraint(equalTo: CardView.leadingAnchor),
            CustomImage.trailingAnchor.constraint(equalTo: CardView.trailingAnchor),
            CustomImage.topAnchor.constraint(equalTo: CardView.topAnchor),
            CustomImage.bottomAnchor.constraint(equalTo: CardView.bottomAnchor),
            
            overLay.leadingAnchor.constraint(equalTo: CardView.leadingAnchor),
            overLay.trailingAnchor.constraint(equalTo: CardView.trailingAnchor),
            overLay.topAnchor.constraint(equalTo: CardView.topAnchor),
            overLay.bottomAnchor.constraint(equalTo: CardView.bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
