//
//  MoviesViewController.swift
//  Medi+ViewController
//
//  Created by Rosa Ortega on 30/06/23.
//

import UIKit

class MoviesViewController: UIViewController {

    var tableView: UITableView?
    var moviesCollectionView: UICollectionView?
    var moviesData = MoviesData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.backgroundColor
        initUI()
        moviesData.data()
        moviesData.getImage()
    }
    
    func initUI() {
        tableView = UITableView(frame: CGRect(x: 5, y: 0, width: Constants.width - 10, height: Constants.height))
        tableView?.delegate = self
        tableView?.dataSource = self
        view.addSubview(tableView!)
        
        /*
         moviesCollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            layout.minimumLineSpacing = Constants.width/15
            layout.minimumInteritemSpacing = Constants.width/10
            
        }
         */
    }
}

extension MoviesViewController: UITableViewDelegate, UITableViewDataSource {
    // Cuantas celdas tiene la table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesData.dataSource?.movieCategory?[section].movies?.count ?? 0
    }
    
    // cellForRowAt -> Modelo de celda
    // indexPath -> elemento de la tabla
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = moviesData.dataSource?.movieCategory?[indexPath.section].movies?[indexPath.row]
        let movieCell = MoviesTableTableViewCell(movie: movie!)
        return movieCell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return moviesData.dataSource?.movieCategory?.count ?? 0
    }
    
    /* func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dataSource?.movieCategory?[section].name ?? ""
    } */
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("I am in the category \(indexPath.section) and the row \(indexPath.row)")
        let movie = moviesData.dataSource?.movieCategory?[indexPath.section].movies?[indexPath.row]
        let movieDetailViewController = MovieDetailViewController(movie: movie)
        movieDetailViewController.modalPresentationStyle = .popover
        present(movieDetailViewController, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        Constants.height/7
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.layer.cornerRadius = 4
        view.layer.masksToBounds = true
        view.backgroundColor = UIColor.brightBlue
        
        let playImage = UIImageView(frame: CGRect(x: 5, y: 5, width: 30, height: 30))
        playImage.image = UIImage(systemName: "play.circle.fill")
        playImage.tintColor = UIColor.backgroundColor
        view.addSubview(playImage)
        
        let categoryLabel = UILabel(frame: CGRect(x: 40, y: 7, width: 200, height: 25))
        categoryLabel.text = moviesData.dataSource?.movieCategory?[section].name ?? ""
        categoryLabel.font = .boldSystemFont(ofSize: 24)
        categoryLabel.textColor = UIColor.backgroundColor
        view.addSubview(categoryLabel)
        
        return view
    }
}
