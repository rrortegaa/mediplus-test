//
//  MoviesData.swift
//  Medi+ViewController
//
//  Created by Rosa Ortega on 06/07/23.
//

import Foundation

class MoviesData {
    
    var imageSource: MoviesCollectionObject?
    var dataSource: MovieObject?
    
    func getImage() {
        let harryPotter = MovieImage(image: "harry-potter")
        let dolittle = MovieImage(image: "dolittle")
        let shutter = MovieImage(image: "shutter")
        let shining = MovieImage(image: "shining")
        let darkKnight = MovieImage(image: "dark-knight")
        let revenant = MovieImage(image: "revenant")
        let tortugaRoja = MovieImage(image: "tortuga-roja")
        let soul = MovieImage(image: "soul")
        
        
        let recent = MovieCategory(name: "Recent", movieImage: [harryPotter, dolittle, shutter, shining, darkKnight, revenant, tortugaRoja, soul])
        
        let ImagesBD = MoviesCollectionObject(movieCategory: [recent])
        
        imageSource = ImagesBD
    }
    
    
    func data() {
        let fantasyMovie = Movie(name: "Harry Potter", description: "A kid with a supernatural power to save their life and the world", cover: "harry-potter", year: 2005, duration: 128, clasification: "'AA'")
        
        let comedyMovie = Movie(name: "Dr. Dolittle", description: "In Victorian-era Britain, Dr. John Dolittle is a Welsh veterinarian with the ability to communicate with animals. After his wife Lily dies at sea, Dolittle withdraws from society, tending only to the animals.", cover: "dolittle", year: 2020, duration: 102, clasification: "'AA'")
        
        let horrorMovie = Movie(name: "The Shutter", description: "Mysterious images of a paranormal nature and a ghostly being seeking revenge.", cover: "shutter", year: 2004, duration: 97, clasification: "'C'")
        
        let horrorMovie2 = Movie(name: "The Shining", description: "Jack Torrance arrives at the Overlook Hotel, located in the Colorado mountains, 25 miles from the nearest town, to be interviewed for the position of caretaker during the winter months. Built on top of an old Native American burial ground, the hotel is cut off during the winter due to heavy snowfall, and is closed from November to May. The facility's manager, Stuart Ullman, warns Jack that prolonged isolation can be a problem.", cover: "shining", year: 1980, duration: 146, clasification: "'B'")
        
        let actionMovie = Movie(name: "The Dark Knight", description: "With the help of Police Lieutenant James Gordon and newly elected District Attorney Harvey Dent, Batman ups the ante in his war on crime by setting out to take down the remaining gangster groups plaguing the streets.", cover: "dark-knight", year: 2008, duration: 152, clasification: "'B'")
        
        let actionMovie2 = Movie(name: "The Revenant", description: "In 1823, Hugh Glass leads a group of trappers belonging to Andrew Henry in the unorganized northern territory of the United States when they are suddenly ambushed by a group of Arikara Indians, who steal the skins they were carrying. However, some manage to escape. Among the survivors, Hugh, the only man who knew the return route, is fatally injured by a grizzly bear attack.", cover: "revenant", year: 2015, duration: 156, clasification: "'B'")
        
        let animationMovie = Movie(name: "La tortue rouge", description: "The story of a man who tries to escape from a deserted island and is confronted by a giant turtle. The tape does not have dialogue.", cover: "tortuga-roja", year: 2016, duration: 80, clasification: "'A'")
        
        let animationMovie2 = Movie(name: "Soul", description: "Joe Gardner, a high school music teacher living in New York City, feels trapped in his unhappy life and dissatisfied in his current job, where he also dreams of a career as a musician in a jazz band, eventually which his mother and professional seamstress, Libba, strongly opposes, fearing that she may not have the financial security her son needs.", cover: "soul", year: 2020, duration: 100, clasification: "'AA'")
        
        let horrorCategory = Category(name: "Terror", movies: [horrorMovie, horrorMovie2])
        let actionCategory = Category(name: "Action", movies: [actionMovie, actionMovie2])
        let animationCategory = Category(name: "Animation", movies:[animationMovie, animationMovie2])
        let fantasyCategory = Category(name: "Fantasy", movies: [fantasyMovie])
        let comedyCategory = Category(name: "Comedy", movies: [comedyMovie])
        
        let moviesBD = MovieObject( category: [horrorCategory, actionCategory, animationCategory, fantasyCategory, comedyCategory] )
        
        dataSource = moviesBD
    }
}
