//
//  Yonetmenler.swift
//  FilmlerUygulamasi
//
//  Created by İremsu Pala on 7.03.2025.
//

import Foundation

class Yonetmenler : Identifiable {
    var yonetmen_id: Int?
    var yonetmen_ad: String?
    
    init() {
        
    }
    init(yonetmen_id: Int? = nil, yonetmen_ad: String? = nil) {
        self.yonetmen_ad = yonetmen_ad
        self.yonetmen_id = yonetmen_id
    }
}
