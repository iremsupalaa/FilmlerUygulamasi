//
//  ContentView.swift
//  FilmlerUygulamasi
//
//  Created by İremsu Pala on 7.03.2025.
//

import SwiftUI

struct Anasayfa: View {
    @State private var filmlerListesi = [Filmler]()
    var kategori = Kategoriler()
    var body: some View {
            GeometryReader { geometry in
                let ekranGenislik = geometry.size.width
                let itemGenislik = (ekranGenislik-40)/2
                //10 x 20 x 10 = 40
                ScrollView {
                    LazyVGrid(columns:[GridItem(.flexible()),GridItem(.flexible())], spacing: 20) {
                        ForEach(filmlerListesi) { film in
                            NavigationLink(destination: FilmDetaySayfa(film : film)) {
                                FilmItemView(film: film, genislik: itemGenislik)
                            }
                        }
                        
                    }
                }.padding(10)
                    .navigationTitle("Filmler")
                    .onAppear {
                        var liste = [Filmler]()
                        let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Aksiyon")
                        let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Drama")
                        let k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim Kurgu")
                        let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
                        let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")
                        let y3 = Yonetmenler(yonetmen_id: 3, yonetmen_ad: "Nuri Bilge Ceylan")
                        let y4 = Yonetmenler(yonetmen_id: 4, yonetmen_ad: "Roman Polanski")
                        let f1 = Filmler(film_id: 1, film_ad: "Django", film_resim: "django", kategori: k1, yonetmen: y1, film_yil: 2014)
                        let f2 = Filmler(film_id: 2, film_ad: "Interstellar", film_resim: "interstellar", kategori: k3, yonetmen: y2, film_yil: 2015)
                        let f3 = Filmler(film_id: 3, film_ad: "Inception", film_resim: "inception", kategori: k3, yonetmen: y2, film_yil: 2010)
                        let f4 = Filmler(film_id: 4, film_ad: "Anadoluda", film_resim: "birzamanlaranadoluda", kategori: k2, yonetmen: y3, film_yil: 2011)
                        let f5 = Filmler(film_id: 5, film_ad: "The Pianist", film_resim: "thepianist", kategori: k2, yonetmen: y4, film_yil: 2008)
                        let f6 = Filmler(film_id: 6, film_ad: "The Hateful Eight", film_resim: "thehatefuleight", kategori: k1, yonetmen: y1, film_yil: 2017)
                        
                       
                        
                        liste.append(f1)
                        liste.append(f2)
                        liste.append(f3)
                        liste.append(f4)
                        liste.append(f5)
                        liste.append(f6)
                        
                        let finalListe = liste.filter({ $0.kategori!.kategori_id == kategori.kategori_id})

                        filmlerListesi = finalListe
                    }
                
            }
        }
    }


struct Anasayfa_Previews: PreviewProvider {
    static var previews: some View {
        Anasayfa()
    }
}
