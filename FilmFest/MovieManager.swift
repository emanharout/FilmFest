//
//  MovieManager.swift
//  FilmFest
//
//  Created by Emmanuoel Haroutunian on 2/28/17.
//  Copyright © 2017 Harrison Ferrone. All rights reserved.
//

import Foundation

class MovieManager {
  var moviesToSeeCount = 0
  let moviesSeenCount = 0
  private var moviesToSee = [Movie]()
  
  func addMovieToLibrary(movie: Movie) {
    moviesToSeeCount += 1
    moviesToSee.append(movie)
  }
  
  func movieAtIndex(index: Int) -> Movie {
    return moviesToSee[index]
  }
}
