//
//  MoviesCollectionObject.swift
//  Medi+ViewController
//
//  Created by Rosa Ortega on 06/07/23.
//

import Foundation

class MoviesCollectionObject {
    var movieCategory: [MovieCategory]?
    
    init(movieCategory: [MovieCategory]?) {
        self.movieCategory = movieCategory
    }
}


class MovieCategory {
    var name: String?
    var movieImage: [MovieImage]?
    
    init(name: String? = nil, movieImage: [MovieImage]?) {
        self.name = name
        self.movieImage = movieImage
    }
}

class MovieImage {
    // var name: String?
    // var description: String?
    var image: String?
    // var year: Int?
    // var duration: Float?
    // var clasification: String?
    
    init(image: String? = nil) {
        
        self.image = image
    }
}

