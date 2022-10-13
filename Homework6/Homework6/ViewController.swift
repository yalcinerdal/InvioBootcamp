//
//  ViewController.swift
//  Homework6
//
//  Created by Erdal Yalçın on 7.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabBar: UITabBar!
    
    @IBOutlet weak var headerCollectionV: UICollectionView!
    
    @IBOutlet weak var categoryOneCV: UICollectionView!
    
    var kisiler = [BannerModel]()
    var category1 = [CategoryOneModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.selectedItem = tabBar.items?[2]
        kisilerAta()
        kategoriAta()
        headerCollectionV.dataSource = self
        headerCollectionV.delegate = self
        self.headerCollectionV.register(UINib(nibName:"BannerCVC", bundle: nil), forCellWithReuseIdentifier: BannerCVC.identifier)
        headerCollectionV.reloadData()
        
        categoryOneCV.dataSource = self
        categoryOneCV.delegate = self
        self.categoryOneCV.register(UINib(nibName:"CategoryOneCVC", bundle: nil), forCellWithReuseIdentifier: CategoryOneCVC.identifier)
        categoryOneCV.reloadData()
    }
}
extension ViewController{
    func kisilerAta() {
        kisiler.append(BannerModel(baslik1: "EN POPÜLER LİSTE", baslik2: "Zirvedekiler: Türkçe Pop", baslik3: "Apple Music: Pop", img: #imageLiteral(resourceName: "photo1")))
        kisiler.append(BannerModel(baslik1: "UZAMSAL SESTE YENİ", baslik2: "CHARLIE", baslik3: "Charlie Puth", img: #imageLiteral(resourceName: "photo2")))
        kisiler.append(BannerModel(baslik1: "ŞİMDİDEN EKLE", baslik2: "Midnights", baslik3: "Taylor Swift", img: #imageLiteral(resourceName: "photo3")))
        kisiler.append(BannerModel(baslik1: "ÖNE ÇIKAN ETKİNLİK", baslik2: "Major League Djz'in İbiza performansını 15 Ekim'de canlı izle.", baslik3: "", img: #imageLiteral(resourceName: "photo4")))
        kisiler.append(BannerModel(baslik1: "YILDIZI PARLAYANLAR", baslik2: "Türkiye'nin yükselen yıldızını keşfet", baslik3: "", img: #imageLiteral(resourceName: "photo5")))
        kisiler.append(BannerModel(baslik1: "ŞİMDİ DİNLE", baslik2: "Shazam Stars", baslik3: "Apple Music", img: #imageLiteral(resourceName: "photo6")))
        kisiler.append(BannerModel(baslik1: "HAFTANIN SINGLE'I", baslik2: "Yolların Gözledim - Single", baslik3: "Birkan Nasuhoğlu", img: #imageLiteral(resourceName: "photo7")))
        kisiler.append(BannerModel(baslik1: "GÜNCEL LİSTE", baslik2: "Günün Yenileri", baslik3: "Apple Music", img: #imageLiteral(resourceName: "photo8")))
        kisiler.append(BannerModel(baslik1: "GÜNCEL LİSTE", baslik2: "Zirvedekiler Türkçe Rap: Khontkar", baslik3: "", img: #imageLiteral(resourceName: "photo9")))
        kisiler.append(BannerModel(baslik1: "UZAMSAL SESTE YENİ", baslik2: "Yine Yeşillendi", baslik3: "Zeyn'el & Gizem ", img: #imageLiteral(resourceName: "photo10")))
        
    }
    
    func kategoriAta() {
        category1.append(CategoryOneModel(baslik1: "Uzamsal Ses için Oluşturuldu", baslik2: "Apple Music", img: #imageLiteral(resourceName: "c1")))
        category1.append(CategoryOneModel(baslik1: "Paradoks", baslik2: "Cakal", img: #imageLiteral(resourceName: "c2")))
        category1.append(CategoryOneModel(baslik1: "Uzamsal Ses: Hit'ler", baslik2: "Apple Music", img: #imageLiteral(resourceName: "c3")))
        category1.append(CategoryOneModel(baslik1: "CHARLIE", baslik2: "Charlie Puth", img: #imageLiteral(resourceName: "c4")))
        category1.append(CategoryOneModel(baslik1: "Yine Yeşillendi", baslik2: "Zeyn'el & Gizem", img: #imageLiteral(resourceName: "c5")))
        category1.append(CategoryOneModel(baslik1: "Annabelle - EP", baslik2: "Rozz Kalliope", img: #imageLiteral(resourceName: "c6")))
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.headerCollectionV {
                return kisiler.count
        } else {
            return category1.count }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.headerCollectionV {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCVC", for: indexPath) as! BannerCVC
        cell.configure(model: kisiler[indexPath.row])
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryOneCVC", for: indexPath) as! CategoryOneCVC
            cell.configure(model: category1[indexPath.row])
                return cell
        }
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.headerCollectionV {
            return CGSize(width: self.headerCollectionV.frame.width , height: self.headerCollectionV.frame.height )
        } else {
            return CGSize(width: self.categoryOneCV.frame.width / 2, height: self.categoryOneCV.frame.height )
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == self.headerCollectionV {
            return 0.0
        } else {
            return  0.0 }
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            if collectionView == self.headerCollectionV {
                return 0.0
            } else {
                return  0.0 }
        }
}

