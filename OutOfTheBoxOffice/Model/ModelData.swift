//
//  ModelData.swift
//  Flixster-iOS
//
//  Created by Suhail Khan on 2/21/22.
//

import Foundation
import Combine

// API URL: https://api.themoviedb.org/3/movie/%d/videos?api_key=5661294b0c021d6de6393dce82d46e52

var movies: [Movie] = load("movieData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

//public class ModelData: ObservableObject {
//    @Published var movies = [Movie]()
//
//    init() {
//        load()
//    }
//    func load() {
//        let url = URL(string: "https://api.themoviedb.org/3/movie/%d/videos?api_key=5661294b0c021d6de6393dce82d46e52")!
//        URLSession.shared.dataTask(with: url) {(data,response,error) in
//            do {
//                if let d = data {
//                    let decodedLists = try JSONDecoder().decode([Movie].self, from: d)
//                    DispatchQueue.main.async {
//                        self.movies = decodedLists
//                    }
//                } else {
//                    fatalError("Couldn't find data.")
//                }
//            } catch {
//                fatalError("Couldn't find data.")
//            }
//        }.resume()
//    }
//}
