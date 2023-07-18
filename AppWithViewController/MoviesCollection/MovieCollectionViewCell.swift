//
//  MovieCollectionViewCell.swift
//  Medi+ViewController
//
//  Created by Rosa Ortega on 07/07/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    var imageMovie: UIImageView?
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        self.backgroundColor = .darkNavy
        imageMovie = UIImageView(frame: CGRect(x: 6, y: 8, width: Constants.width/7, height: Constants.height/9))
        imageMovie?.backgroundColor = UIColor.backgroundColor
        imageMovie?.contentMode = .scaleAspectFit
        imageMovie?.image = UIImage(named: "")
        self.addSubview(imageMovie!)
    }
    
    func setData(movieImage: MovieImage) {
        imageMovie?.image = UIImage(named: movieImage.image ?? "")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
