//
//  KategoriItem.swift
//  FilmlerUygulamasi
//
//  Created by İremsu Pala on 7.03.2025.
//

import SwiftUI

struct KategoriItem: View {
    var kategori = Kategoriler()
    var body: some View {
        Text(kategori.kategori_ad!)
    }
}

struct KategoriItem_Preview : PreviewProvider {
    static var previews: some View {
        KategoriItem()
    }
}
