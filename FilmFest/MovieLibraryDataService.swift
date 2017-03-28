//
//  MovieLibraryDataService.swift
//  FilmFest
//
//  Created by Emmanuoel Haroutunian on 3/5/17.
//  Copyright © 2017 Harrison Ferrone. All rights reserved.
//

import UIKit

enum LibrarySection: Int {
  case MoviesToSee, MoviesSeen
}

class MovieLibraryDataService: NSObject, UITableViewDelegate, UITableViewDataSource {
  
  var movieManager: MovieManager!
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    guard let movieManager = movieManager else { return 0 }
    guard let librarySection = LibrarySection(rawValue: section) else { return 0 }
    
    switch librarySection {
    case .MoviesToSee:
      return movieManager.moviesToSeeCount
    case .MoviesSeen:
      return movieManager.moviesSeenCount
    }
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "movieCellID", for: indexPath)
    return cell
  }
  
}
