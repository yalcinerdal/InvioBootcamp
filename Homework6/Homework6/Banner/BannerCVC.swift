//
//  HeaderCVC.swift
//  Homework6
//
//  Created by Erdal Yalçın on 12.10.2022.
//

import UIKit

class BannerCVC: UICollectionViewCell {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    static let identifier = "BannerCVC"
    @IBOutlet weak var thirdLabel: UILabel!
    
    @IBOutlet weak var bannerImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(model: BannerModel) {
        self.bannerImage.image = model.img
        self.firstLabel.text = model.baslik1
        self.secondLabel.text = model.baslik2
        self.thirdLabel.text = model.baslik3
        }
}
