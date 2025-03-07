//
//  Kategoriler.swift
//  FilmlerUygulamasi
//
//  Created by İremsu Pala on 7.03.2025.
//

import Foundation

class Kategoriler : Identifiable {
    var kategori_id: Int?
    var kategori_ad: String?
    
    init() {
        
    }
    init(kategori_id: Int, kategori_ad: String) {
        self.kategori_ad = kategori_ad
        self.kategori_id = kategori_id
    }
}
