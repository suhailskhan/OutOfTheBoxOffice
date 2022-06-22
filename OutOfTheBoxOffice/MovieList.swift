//
//  MovieList.swift
//  Flixster-iOS
//
//  Created by Suhail Khan on 2/21/22.
//

import SwiftUI

struct MovieList: View {
    var body: some View {
        NavigationView{
            List(movies) { movie in
                NavigationLink {
                    MovieDetail()
                } label: {
                    MovieRow(movie: movie)
                }
            }
            .navigationTitle("Now Playing")
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
