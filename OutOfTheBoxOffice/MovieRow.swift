//
//  MovieRow.swift
//  Flixster-iOS
//
//  Created by Suhail Khan on 2/21/22.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            AsyncImage(
                url: movie.getPosterURL(),
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 100)
                },
                placeholder: {
                    ProgressView()
                        .padding()
                        .frame(width: 50, height: 100)
                }
            )
            Text(movie.title)
                .padding()
            
            Spacer()
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    //static var movies = ModelData().movies
    
    static var previews: some View {
        Group {
            MovieRow(movie: movies[0])
            MovieRow(movie: movies[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
