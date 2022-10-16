//
//  IsKayitInteractor.swift
//  Homework7
//
//  Created by Erdal Yalçın on 16.10.2022.
//

import Foundation

class IsKayitInteractor : PresenterToInteractorIsKayitProtocol {
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar.sqlite")
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func isEkle(is_ad: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("INSERT INTO yapilacaklar (yapilacak_is) VALUES (?)", values: [is_ad])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}

