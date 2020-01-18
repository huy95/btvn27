//
//  ViewController.swift
//  bt27-zoompic-collectionView
//
//  Created by Huy on 1/18/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.register(CellPickCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .red
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    var foods : [foody] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNavi()
        collectionView.delegate = self
        collectionView.dataSource = self
        setupLayout()
        setupData()
        
    }
    func setupNavi(){
//        navigationController?.navigationBar.barTintColor = .white
//        navigationController?.title = "chon anh"
//        let searchIconItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchFunc))
//        let searchLabelItem = UIBarButtonItem(title: "Tìm bạn bè, tin nhắn", style: .plain, target: self, action: #selector(searchFunc))
        
//        navigationItem.leftBarButtonItems = [searchIconItem, searchLabelItem]
    }
    func setupLayout(){
        view.addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    func setupData(){
        let food1 = foody(imageName: "homei.jpg", name: "Home")
        let food2 = foody(imageName: "barrafina.jpg", name: "Home")
        let food3 = foody(imageName: "homei.jpg", name: "Home")
        let food4 = foody(imageName: "homei.jpg", name: "Home")
        let food5 = foody(imageName: "homei.jpg", name: "Home")
        let food6 = foody(imageName: "homei.jpg", name: "Home")
        let food7 = foody(imageName: "homei.jpg", name: "Home")
        let food8 = foody(imageName: "homei.jpg", name: "Home")
        let food9 = foody(imageName: "homei.jpg", name: "Home")
        let food10 = foody(imageName: "homei.jpg", name: "Home")
        let food11 = foody(imageName: "homei.jpg", name: "Home")
        foods = [food1, food2, food3 , food4, food5, food6, food7, food8, food9, food10, food11]
    }

}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foods.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CellPickCollectionViewCell
        cell.food = foods[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = ((collectionView.frame.size.width - 1)/2)
        return CGSize(width: size, height: size)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = foods[indexPath.row]
        let zoomVC =  main22()
        zoomVC.image = UIImage(named: item.imageName)
        present(zoomVC, animated: true, completion: nil)
        print(foods.count)
    }
}

