//
//  MoviesObject.swift
//  Medi+ViewController
//
//  Created by Rosa Ortega on 30/06/23.
//

import Foundation

class MovieObject {
    var movieCategory: [Category]?
    
    init(category: [Category]? = nil) {
        self.movieCategory = category
    }
}


class Category {
    var name: String?
    var movies: [Movie]?
    
    init(name: String? = nil, movies: [Movie]? = nil) {
        self.name = name
        self.movies = movies
    }
}

class Movie {
    var name: String?
    var description: String?
    var cover: String?
    var year: Int?
    var duration: Float?
    var clasification: String?
    
    init(name: String? = nil, description: String? = nil, cover: String? = nil, year: Int? = nil, duration: Float? = nil, clasification: String? = nil) {
        self.name = name
        self.description = description
        self.cover = cover
        self.year = year
        self.duration = duration
        self.clasification = clasification
    }
}
