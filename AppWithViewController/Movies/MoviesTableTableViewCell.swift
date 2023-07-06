//
//  MoviesTableTableViewCell.swift
//  Medi+ViewController
//
//  Created by Rosa Ortega on 03/07/23.
//

import UIKit

class MoviesTableTableViewCell: UITableViewCell {
    // var movieDirector: UILabel?
    // var name: String?
    var movieContent: UIView?
    var movieName: UILabel?
    var movieDescription: UILabel?
    var movieYear: UILabel?
    var movieClasification: UILabel?
    var movieCover: UIImageView?
    
    var movie: Movie?
    
    init(movie: Movie) {
        super.init(style: .default, reuseIdentifier: nil )
        self.movie = movie
        // self.movieDescription = movieDescription
        self.backgroundColor = UIColor.backgroundColor
        initUI()
    }
    
    func initUI() {
        
        movieContent = UIView(frame: CGRect(x: 0, y: 0, width: Constants.width - 5, height: Constants.height/5 - 55))
        movieContent?.backgroundColor = UIColor.lightText
        movieContent?.layer.cornerRadius = 4
        movieContent?.layer.masksToBounds = true
        self.addSubview(movieContent!)
        
        movieCover = UIImageView(frame: CGRect(x: 0, y: 0, width: 85, height: 115))
        movieCover?.image = UIImage(named: movie?.cover ?? "user")
        movieCover?.layer.cornerRadius = 4
        movieCover?.layer.masksToBounds = true
        movieContent?.addSubview(movieCover!)
        
        movieName = UILabel(frame: CGRect(x: 93, y: 10, width: 285, height: 18))
        movieName?.text = movie?.name
        movieName?.textAlignment = .left
        movieName?.font = .boldSystemFont(ofSize: 18)
        movieName?.textColor = UIColor.darkNavy
        //movieName?.backgroundColor = .white
        self.addSubview(movieName!)
        
        movieClasification = UILabel(frame: CGRect(x: 160, y: 35, width: 25, height: 15))
        movieClasification?.text = movie?.clasification
        movieClasification?.textAlignment = .left
        movieClasification?.font = .italicSystemFont(ofSize: 15)
        movieClasification?.textColor = UIColor.darkNavy
        movieClasification?.backgroundColor = .lightGrey
        self.addSubview(movieClasification!)
        
        movieDescription = UILabel(frame: CGRect(x: 93, y: 55, width: 285, height: 50))
        movieDescription?.text = movie?.description
        movieDescription?.numberOfLines = 2
        movieDescription?.lineBreakMode = NSLineBreakMode.byTruncatingTail
        movieDescription?.textAlignment = .left
        movieDescription?.font = .boldSystemFont(ofSize: 15)
        movieDescription?.textColor = UIColor.darkNavy
        //movieDescription?.backgroundColor = .brightBlue
        self.addSubview(movieDescription!)
        
    }
    required init?(coder: NSCoder) {
        fatalError("Init has not been implemented")
    }

}
