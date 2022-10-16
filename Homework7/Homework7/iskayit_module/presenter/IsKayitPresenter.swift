//
//  IsKayıtPresenter.swift
//  Homework7
//
//  Created by Erdal Yalçın on 16.10.2022.
//

import Foundation

class IsKayitPresenter : ViewToPresenterIsKayitProtocol {
    var isKayitInteractor: PresenterToInteractorIsKayitProtocol?
    
    func ekle(is_ad: String) {
        isKayitInteractor?.isEkle(is_ad: is_ad)
    }
}
