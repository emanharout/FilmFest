//
//  MovieManager.swift
//  FilmFest
//
//  Created by Emmanuoel Haroutunian on 2/28/17.
//  Copyright © 2017 Harrison Ferrone. All rights reserved.
//

import Foundation

class MovieManager {
  var moviesToSeeCount: Int { return moviesToSeeArray.count }
  var moviesSeenCount: Int { return moviesSeenArray.count }
  private var moviesToSeeArray = [Movie]()
  private var moviesSeenArray = [Movie]()
  
  func addMovieToLibrary(movie: Movie) {
    moviesToSeeArray.append(movie)
  }
  
  func movieAtIndex(index: Int) -> Movie {
    return moviesToSeeArray[index]
  }
  
  func favoriteMovieAtIndex(index: Int) {
    guard index < moviesToSeeCount else { return }
    
    let favoritedMovie = moviesToSeeArray.remove(at: index)
    moviesSeenArray.append(favoritedMovie)
  }
  
  func favoritedMovieAtIndex(index: Int) -> Movie {
    return moviesSeenArray[index]
  }
}
