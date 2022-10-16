//
//  AnasayfaProtocols.swift
//  Homework7
//
//  Created by Erdal Yalçın on 16.10.2022.
//

import Foundation

protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView:PresenterToViewAnasayfaProtocol? {get set}
    
    func kisileriYukle()
    func ara(aramaKelimesi:String)
    func sil(yapilacak_id:Int)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func tumYapilacaklariAl()
    func yapilacakAra(aramaKelimesi:String)
    func yapilacakSil(yapilacak_id:Int)
}

protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yapilacaklarListesi:[Yapilacaklar])
}

protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(yapilacaklarListesi:[Yapilacaklar])
}

protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnasayfaVC)
}

