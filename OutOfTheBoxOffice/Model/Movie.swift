//
//  Movie.swift
//  Flixster-iOS
//
//  Created by Suhail Khan on 2/21/22.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Codable, Identifiable {
    var id: Int
    var poster_path: String
    var backdrop_path: String
    var title: String
    var overview: String
    var vote_average: Double
    
    func getPosterURL() -> URL
    {
        var url = URL(string: "https://image.tmdb.org/t/p/w342")
        url = url?.appendingPathComponent(self.poster_path)
        return url!
    }
}
