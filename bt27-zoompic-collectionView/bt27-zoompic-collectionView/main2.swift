//
//  main2.swift
//  bt27-zoompic-collectionView
//
//  Created by Huy on 1/18/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class main2: UIViewController {

    var imageView : UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
//        imageView.image = UIImage(named: "")
        return imageView
    }()
//    var image: UIImage?
//    var food : foody? {
//        didSet{
//            if let food = food {
//                imageView.image = UIImage(named: food.imageName)
//            }
//    }
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "homei.jpg")
        
        setupLa()
    }
    func setupLa(){
       
        
        
        view.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300 ).isActive = true
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
        
        imageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
    }
    
}
