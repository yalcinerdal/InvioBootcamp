//
//  IsKayitProtocols.swift
//  Homework7
//
//  Created by Erdal Yalçın on 16.10.2022.
//

import Foundation

protocol ViewToPresenterIsKayitProtocol {
    var isKayitInteractor:PresenterToInteractorIsKayitProtocol? {get set}
    
    func ekle(is_ad:String)
}

protocol PresenterToInteractorIsKayitProtocol {
    func isEkle(is_ad:String)
}

protocol PresenterToRouterIsKayitProtocol {
    static func createModule(ref:IsKayitVC)
}

