import UIKit

//Array

var numaralar = [10,20,30]

var meyveler = [String]()

//Veri ekleme
meyveler.append("Elma")
meyveler.append("Muz")
meyveler.append("Kiraz")

meyveler[0] = "Yeni Elma"
print(meyveler)

meyveler.insert("Portakal", at: 1)
print(meyveler)

let m = meyveler[2]
print("2. indeks: \(m)")

print(meyveler.isEmpty)
print(meyveler.count)
print(meyveler.first!)
print(meyveler.last!)


class Urunler {
    var id:Int?
    var ad:String?
    var fiyat:Int?
    
    init(id:Int,ad:String,fiyat:Int) {
        self.id = id
        self.ad = ad
        self.fiyat = fiyat
    }
}

var u1 = Urunler(id: 1, ad: "TV", fiyat: 7000)
var u2 = Urunler(id: 2, ad: "Bilgisayar", fiyat: 15000)
var u3 = Urunler(id: 3, ad: "Kulaklık", fiyat: 1000)

var urunlerListesi = [Urunler]()
urunlerListesi.append(u1)
urunlerListesi.append(u2)
urunlerListesi.append(u3)

for u in urunlerListesi {
    print("Id: \(u.id!) - Ad \(u.ad!) - Fiyat: \(u.fiyat!) ₺")
}

var f2 = urunlerListesi.filter({$0.ad!.contains("lg")})
print("Filtreleme2")

for u in f2 {
    print("Id : \(u.id!) - Ad: \(u.ad!) - Fiyat : \(u.fiyat!) ₺")
}



//Sort

var s1 = urunlerListesi.sorted(by: { $0.fiyat! > $1.fiyat! })
print("Fiyata göre sırala")

for u in s1 {
    print("Id : \(u.id!) - Ad: \(u.ad!) - Fiyat : \(u.fiyat!) ₺")
}

var s2 = urunlerListesi.sorted(by: { $0.fiyat! < $1.fiyat! })
print("Fiyata göre sırala")

for u in s2 {
    print("Id : \(u.id!) - Ad: \(u.ad!) - Fiyat : \(u.fiyat!) ₺")
}

var s3 = urunlerListesi.sorted(by: { $0.ad! > $1.ad!})
print("Adına göre sırala")

for u in s3 {
    print("Id : \(u.id!) - Ad: \(u.ad!) - Fiyat : \(u.fiyat!) ₺")
}


var s4 = urunlerListesi.sorted(by: { $0.ad! < $1.ad!})
print("Adına göre sırala")

for u in s4 {
    print("Id : \(u.id!) - Ad: \(u.ad!) - Fiyat : \(u.fiyat!) ₺")
}

//Set

var meyveler1 = Set<String>()

meyveler1.insert("Elma")
meyveler1.insert("Portakal")
meyveler1.insert("Muz")
print(meyveler1)

meyveler1.insert("muz")
print(meyveler1)

for meyve in meyveler1 {
    print(meyve)
}

for (i,m) in meyveler1.enumerated() {
    print("\(i)  \(m)")
}

print(meyveler1.count)
meyveler1.remove("muz")
print(meyveler1.count)

var indeks = meyveler1.firstIndex(of: "Muz")
meyveler1.remove(at: indeks!)
print(meyveler1.count)
meyveler1.removeAll()
print(meyveler1.count)

//Dictionary

var iller = [Int: String]()

iller[16] = "Bursa"
iller[34] = "İstanbul"

print(iller)

print(iller[34]!)

iller[16] = "Yeni Bursa"

for (anahtar,deger) in iller {
    print("\(anahtar)    \(deger)")
}

iller.removeValue(forKey: 16)
print(iller)

//Guard-let

//if'in tersi
//Fonksiyon içinde kullanılır

func kisiTanimaIf(ad: String) {
    if ad == "Ahmet" {
        print("Selam Ahmet")
    } else {
        print("Tanınmayan kisi")
    }
}

kisiTanimaIf(ad: "Ahmetc")


func kisiTanimaGuard(ad: String) {
    guard ad == "Ahmet" else{
        print("Tanınmayan kisi")
        return
    }
    print("Selam Ahmet")
}

kisiTanimaGuard(ad: "Ahmet")


//Hata Ayıklama
//1.Derleme (Compile)
let c = 4
//c = "s"

//2.Hata (Runtime Exception)
enum Hatalar: Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1: Int,sayi2: Int)  throws -> Int {
    
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}
do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi {
    print("Bolunemez")
}

let sonuc1 = try? bolme(sayi1: 8, sayi2: 0)

if let temp = sonuc1 {
    print(temp)
} else {
    print("Bolunemez")
}


