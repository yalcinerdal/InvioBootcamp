import UIKit

struct Ogrenci {
    let ogrAd : String
    let ogrNo : Int
    let ogrSoyad : String
    let cinsiyet : String
    let dTarih : String
    let sinif : Int8
}

struct Kitap {
    let kitapAdi : String
    let kitapNo : Int8
    let isbnNo : Int
    let yazar : Yazar?
    let tur : Tur?
    let sayfaSayisi : Int
    let puan : Float
}

struct Islem {
    let vTarih : String
    let islemNo : Int
    let ogr : Ogrenci?
    let kitap : Kitap?
    let aTarih : String
}

struct Yazar {
    let yazarNo : Int8
    let yazarAd : String
    let yazarSoyad : String
}

struct Tur {
    let turNo : Int8
    let turAdi : String
}


let ogrenci1 : Ogrenci
let kitap1 : Kitap
let yazar1 : Yazar
let tur1 : Tur
let islem1 : Islem

tur1 = .init(turNo: 5, turAdi: "Korku")
yazar1 = .init(yazarNo: 7, yazarAd: "Stephen", yazarSoyad: "King")
kitap1 = .init(kitapAdi: "Pet Sematary", kitapNo: 3, isbnNo: 9780743518444, yazar: yazar1, tur: tur1, sayfaSayisi: 350, puan: 7.8)
ogrenci1 = .init(ogrAd: "Erdal", ogrNo: 17155012, ogrSoyad: "Yalçın", cinsiyet: "Erkek", dTarih: "1998-09-08", sinif: 4)

print(kitap1.isbnNo)
print(kitap1.kitapNo)
print(kitap1.kitapAdi)
print(kitap1.yazar?.yazarAd ?? "")
print(kitap1.yazar?.yazarSoyad ?? "")
print(kitap1.yazar?.yazarNo ?? 0)
print(kitap1.tur?.turAdi ?? "")
print(kitap1.tur?.turNo ?? "")






