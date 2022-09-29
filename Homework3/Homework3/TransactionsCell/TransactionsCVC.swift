//
//  TransactionsCVC.swift
//  Homework3
//
//  Created by Erdal Yalçın on 29.09.2022.
//

import UIKit

class TransactionsCVC: UICollectionViewCell {

    static let identifier = "TransactionsCVC"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        self.layer.borderColor = CGColor(
        self.layer.borderColor = CGColor(colorSpace: CGColorSpaceCreateDeviceRGB(), components: [0.93, 0.93, 0.93, 1.0])
        self.layer.borderWidth = 1.5
        self.layer.cornerRadius = 10
    }
}
