//
//  AnasayfaPresenter.swift
//  Homework7
//
//  Created by Erdal Yalçın on 16.10.2022.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func kisileriYukle() {
        anasayfaInteractor?.tumYapilacaklariAl()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.yapilacakAra(aramaKelimesi: aramaKelimesi)
    }
    
    func sil(yapilacak_id: Int) {
        anasayfaInteractor?.yapilacakSil(yapilacak_id: yapilacak_id)
    }
}


extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yapilacaklarListesi: [Yapilacaklar]) {
        anasayfaView?.vieweVeriGonder(yapilacaklarListesi: yapilacaklarListesi)
    }
}
