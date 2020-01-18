//
//  CellPickCollectionViewCell.swift
//  bt27-zoompic-collectionView
//
//  Created by Huy on 1/18/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class CellPickCollectionViewCell: UICollectionViewCell {
    let containerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.blue
        return view
    }()
    let photoView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "")
        return imageView
    }()
    let titaleLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.font = .boldSystemFont(ofSize: 12)
        label.textColor = .white
        return label
    }()
    func setupLayout(){
        addSubview(containerView)
        containerView.addSubview(photoView)
        containerView.addSubview(titaleLabel)
        
        containerView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 4).isActive = true
        containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -4).isActive = true
        
        titaleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        titaleLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 8).isActive = true
        titaleLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
        titaleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        photoView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        photoView.bottomAnchor.constraint(equalTo: titaleLabel.topAnchor, constant: 0).isActive = true
        photoView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        photoView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
    }
    var food : foody?{
        didSet{
            if let food = food {
                photoView.image = UIImage(named: food.imageName)
                titaleLabel.text = food.name
            }
        }
    }
    override init(frame: CGRect) {
           super.init(frame: frame)
           
           setupLayout()
       }
       
       required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
}
