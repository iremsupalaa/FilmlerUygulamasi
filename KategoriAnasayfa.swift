//
//  KategoriAnasayfa.swift
//  FilmlerUygulamasi
//
//  Created by İremsu Pala on 7.03.2025.
//

import SwiftUI

struct KategoriAnasayfa: View {
    @State private var kategorilerListesi = [Kategoriler]()
    var body: some View {
        NavigationStack {
            List {
                ForEach(kategorilerListesi) { kategori in
                    NavigationLink(destination: Anasayfa(kategori: kategori)) {
                        KategoriItem(kategori: kategori)
                    }
                   
                }
                
            }.navigationTitle("Kategoriler")
                .onAppear {
                    var liste = [Kategoriler]()
                    let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Aksiyon")
                    let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Drama")
                    let k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim Kurgu")
                    
                    liste.append(k1)
                    liste.append(k2)
                    liste.append(k3)
                    kategorilerListesi = liste

                }
        }
    }
}

struct KategoriAnasayfa_Previews: PreviewProvider {
    static var previews: some View {
        KategoriAnasayfa()
    }
}
