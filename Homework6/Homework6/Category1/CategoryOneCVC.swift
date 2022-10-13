//
//  CategoryOneCVC.swift
//  Homework6
//
//  Created by Erdal Yalçın on 13.10.2022.
//

import UIKit

class CategoryOneCVC: UICollectionViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var firstLabel: UILabel!
    static let identifier = "CategoryOneCVC"
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(model: CategoryOneModel) {
        self.itemImage.image = model.img
        self.firstLabel.text = model.baslik1
        self.secondLabel.text = model.baslik2
    }
}
