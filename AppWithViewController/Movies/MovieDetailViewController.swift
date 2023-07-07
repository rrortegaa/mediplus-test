//
//  MovieDetailViewController.swift
//  Medi+ViewController
//
//  Created by Rosa Ortega on 06/07/23.
//

import UIKit

class MovieDetailViewController: UIViewController {
    // var name: String?
    var movieContent: UIView?
    var movieName: UILabel?
    var movieDescription: UILabel?
    var movieYear: UILabel?
    var movieClasification: UILabel?
    var movieDuration: UILabel?
    var movieDirector: UILabel?
    var movieCover: UIImageView?
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.backgroundColor
        initUI()
    }
    
    init(movie: Movie?) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    func initUI() {
        
        movieContent = UIView(frame: CGRect(x: 10, y: 50, width: Constants.width - 20, height: Constants.height - 100))
        movieContent?.backgroundColor = UIColor.lightText
        movieContent?.layer.cornerRadius = 4
        movieContent?.layer.masksToBounds = true
        view.addSubview(movieContent!)
        
        movieCover = UIImageView(frame: CGRect(x: Constants.width/2 - 100, y: 0, width: 200, height: 280))
        movieCover?.image = UIImage(named: movie?.cover ?? "user")
        movieCover?.layer.cornerRadius = 12
        movieCover?.layer.masksToBounds = true
        movieContent?.addSubview(movieCover!)
        
        movieName = UILabel(frame: CGRect(x: 10, y: 350, width: Constants.width - 20, height: 24))
        movieName?.text = movie?.name
        movieName?.textAlignment = .center
        movieName?.font = .boldSystemFont(ofSize: 24)
        movieName?.textColor = UIColor.darkNavy
        movieName?.backgroundColor = .white
        view.addSubview(movieName!)
        
        movieYear = UILabel(frame: CGRect(x: 10, y: 390, width: 50, height: 18))
        movieYear?.text = String(movie?.year ?? 0)
        movieYear?.textAlignment = .left
        movieYear?.font = .italicSystemFont(ofSize: 18)
        movieYear?.textColor = UIColor.darkNavy
        movieYear?.backgroundColor = .lightGrey
        view.addSubview(movieYear!)
        
        
        
        movieClasification = UILabel(frame: CGRect(x: 0, y: 390, width: 25, height: 18))
        movieClasification?.text = movie?.clasification
        movieClasification?.textAlignment = .left
        movieClasification?.font = .italicSystemFont(ofSize: 18)
        movieClasification?.textColor = UIColor.darkNavy
        movieClasification?.backgroundColor = .lightGrey
        view.addSubview(movieClasification!)
        
        movieDuration = UILabel(frame: CGRect(x: 50, y: 390, width: 100, height: 18))
        movieDuration?.text = "Duration: \(movie?.duration ?? 0) mins."
        movieDuration?.font = .italicSystemFont(ofSize: 18)
        
        movieDescription = UILabel(frame: CGRect(x: 10, y: 420, width: Constants.width - 20, height: 200))
        movieDescription?.text = movie?.description
        movieDescription?.numberOfLines = 0
        movieDescription?.lineBreakMode = NSLineBreakMode.byTruncatingTail
        movieDescription?.textAlignment = .justified
        movieDescription?.font = .boldSystemFont(ofSize: 15)
        movieDescription?.textColor = UIColor.darkNavy
        movieDescription?.backgroundColor = .brightBlue
        view.addSubview(movieDescription!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
