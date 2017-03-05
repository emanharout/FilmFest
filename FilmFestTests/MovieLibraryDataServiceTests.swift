//
//  MovieLibraryDataServiceTests.swift
//  FilmFest
//
//  Created by Emmanuoel Haroutunian on 3/5/17.
//  Copyright © 2017 Harrison Ferrone. All rights reserved.
//

import XCTest

@testable import FilmFest
class MovieLibraryDataServiceTests: XCTestCase {
  
  var sut: MovieLibraryDataService!
  var tableView: UITableView!
  
  override func setUp() {
    super.setUp()
    
    sut = MovieLibraryDataService()
    sut.movieManager = MovieManager()
    
    tableView = UITableView()
    tableView.dataSource = sut
    tableView.delegate = sut
    
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testTableViewSectionCount_ShouldBeTwo() {
    let sectionCount = tableView.numberOfSections
    
    XCTAssertEqual(sectionCount, 2)
  }
  
  func testRowCountInSectionOne_ShouldEqualMoviesToSeeCount() {
    sut.movieManager?.addMovieToLibrary(movie: Movie(title: "Action Adventure"))
    XCTAssertEqual(tableView.numberOfRows(inSection: 0), 1)
    
    sut.movieManager?.addMovieToLibrary(movie: Movie(title: "Fairy Tale"))
    // Have to let test know something in TableView has changed
    tableView.reloadData()
    
    XCTAssertEqual(tableView.numberOfRows(inSection: 0), 2)
  }
  
}
