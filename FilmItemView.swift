//
//  FilmItemView.swift
//  FilmlerUygulamasi
//
//  Created by İremsu Pala on 7.03.2025.
//

import SwiftUI

struct FilmItemView: View {
    var film = Filmler()
    var genislik = 0.0
    var body: some View {
        VStack {
            Image(film.film_resim!).resizable().frame(width: genislik)
            Text(film.film_ad!).foregroundStyle(.gray)
            Text("Sepete Ekle")
                .padding(5)
                .foregroundStyle(.white)
                .background(.indigo)
                .cornerRadius(5)
                .padding(.bottom, 5)
                .onTapGesture {
                    print("\(film.film_ad!) sepete eklendi")
                }
        }.background(Rectangle().fill(.white).shadow(radius: 3))
    }
}

struct FilmItem_Previews: PreviewProvider {
    static var previews: some View {
        FilmItemView()
    }
}
