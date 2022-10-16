//
//  KisiKayitVC.swift
//  Homework7
//
//  Created by Erdal Yalçın on 16.10.2022.
//

import UIKit

class IsKayitVC: UIViewController {
    
    @IBOutlet weak var tfIsAd: UITextField!
    
    
    var isKayitPresenterNesnesi:ViewToPresenterIsKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IsKayitRouter.createModule(ref: self)
    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfIsAd.text {
            isKayitPresenterNesnesi?.ekle(is_ad: ka)
        }
    }
}
