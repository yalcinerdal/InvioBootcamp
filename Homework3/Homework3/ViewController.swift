//
//  ViewController.swift
//  Homework3
//
//  Created by Erdal Yalçın on 28.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profilePhoto: UIImageView!
    
    @IBOutlet weak var collectionV: UICollectionView!
    
    @IBOutlet weak var sendPerson1: UIImageView!
    @IBOutlet weak var sendPerson2: UIImageView!
    @IBOutlet weak var sendPerson3: UIImageView!
    @IBOutlet weak var sendPerson4: UIImageView!
    @IBOutlet weak var sendPerson5: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePhoto.layer.cornerRadius = profilePhoto.frame.height / 2
        profilePhoto.clipsToBounds = true
        
        sendPerson1.layer.cornerRadius = sendPerson1.frame.height / 2
        sendPerson1.clipsToBounds = true
        sendPerson1.layer.borderWidth = 2
        
        sendPerson2.layer.cornerRadius = sendPerson2.frame.height / 2
        sendPerson2.clipsToBounds = true
        sendPerson2.layer.borderWidth = 2
        
        
        sendPerson3.layer.cornerRadius = sendPerson3.frame.height / 2
        sendPerson3.clipsToBounds = true
        sendPerson3.layer.borderWidth = 2
        
        sendPerson4.layer.cornerRadius = sendPerson4.frame.height / 2
        sendPerson4.clipsToBounds = true
        sendPerson4.layer.borderWidth = 2
        
        sendPerson5.layer.cornerRadius = sendPerson5.frame.height / 2
        sendPerson5.clipsToBounds = true
        sendPerson5.layer.borderWidth = 2
        
        collectionV.dataSource = self
        collectionV.delegate = self
        self.collectionV.register(UINib(nibName:"TransactionsCVC", bundle: nil), forCellWithReuseIdentifier: TransactionsCVC.identifier)
        collectionV.reloadData()
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TransactionsCVC", for: indexPath) as! TransactionsCVC
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 150 , height: self.collectionV.frame.height )
    }
    
  /*  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 10.0
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 10.0
        }*/
}

