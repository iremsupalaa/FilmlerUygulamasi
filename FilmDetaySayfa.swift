//
//  FilmDetaySayfa.swift
//  FilmlerUygulamasi
//
//  Created by İremsu Pala on 7.03.2025.
//

import SwiftUI

struct FilmDetaySayfa: View {
    var film = Filmler()
    var body: some View {
        VStack(spacing : 50) {
            Image(film.film_resim!)
            Text(film.yonetmen!.yonetmen_ad!).font(.system(size: 30))
            Text(String(film.film_yil!)).font(.system(size: 50)).foregroundStyle(.blue)
            Button("Sepete Ekle") {
                print("Detay sayfa \(film.film_ad!) sepete eklendi.")
            }.foregroundStyle(.white)
                .frame(width: 250, height: 50)
                .background(.indigo)
                .cornerRadius(10)
        }.navigationTitle(film.film_ad!)
    }
}

struct FilmDetaySayfa_Previews : PreviewProvider {
    static var previews: some View {
        FilmDetaySayfa()
    }
}
