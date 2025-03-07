//
//  Filmler.swift
//  FilmlerUygulamasi
//
//  Created by İremsu Pala on 7.03.2025.
//

import Foundation

class Filmler : Identifiable{
    var film_id: Int?
    var film_ad : String?
    var film_resim : String?
    var film_yil : Int?
    var kategori : Kategoriler?
    var yonetmen : Yonetmenler?
    
    init() {
        
    
    }
    
    init(film_id: Int,film_ad: String, film_resim : String, kategori: Kategoriler, yonetmen: Yonetmenler, film_yil:Int) {
        self.film_ad = film_ad
        self.film_id = film_id
        self.film_resim = film_resim
        self.kategori = kategori
        self.yonetmen = yonetmen
        self.film_yil = film_yil
    }
}
