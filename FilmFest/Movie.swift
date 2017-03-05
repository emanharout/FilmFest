//
//  Movie.swift
//  FilmFest
//
//  Created by Emmanuoel Haroutunian on 2/27/17.
//  Copyright © 2017 Harrison Ferrone. All rights reserved.
//

import Foundation

struct Movie: Equatable {
  let title: String
  var releaseDate: String?
  
  init(title: String, releaseDate: String? = nil) {
    self.title = title
    self.releaseDate = releaseDate
  }
}

func==(lhs: Movie, rhs:Movie) -> Bool {
  if lhs.title != rhs.title {
    return false
  }
  if lhs.releaseDate != rhs.releaseDate {
    return false
  }
  
  return true
}
