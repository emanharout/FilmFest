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
  var movieLibraryVC: MovieLibraryViewController!
  
  override func setUp() {
    super.setUp()
    
    sut = MovieLibraryDataService()
    sut.movieManager = MovieManager()
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    movieLibraryVC = storyboard.instantiateViewController(withIdentifier: "MovieLibraryVC") as! MovieLibraryViewController
    _ = movieLibraryVC.view
    
    tableView = movieLibraryVC.movieTableView
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
  
  func testRowCountInSectionTwo_ShouldEqualMovesSeenCount() {
    sut.movieManager.addMovieToLibrary(movie: Movie(title: "Sci-Fi"))
    sut.movieManager.addMovieToLibrary(movie: Movie(title: "Thriller"))
    sut.movieManager.favoriteMovieAtIndex(index: 0)
    
    XCTAssertEqual(tableView.numberOfRows(inSection: 1), 1)
    
    sut.movieManager.favoriteMovieAtIndex(index: 0)
    tableView.reloadData()
    XCTAssertEqual(tableView.numberOfRows(inSection: 1), 2)
  }
  
  func testCellForRowAtIndex_ShouldReturnMovieCell() {
    sut.movieManager.addMovieToLibrary(movie: Movie(title: "Horror"))
    tableView.reloadData()
    
    let cell = tableView.cellForRow(at: IndexPath(row: 0, section: 0))
    XCTAssertTrue(cell is MovieCell)
    
  }
  
  func testCell_ShouldDequeueCell() {
    let tableViewMock = TableViewMock()
    tableViewMock.dataSource = sut
    tableViewMock.register(MovieCell.self, forCellReuseIdentifier: "movieCellID")
    
    sut.movieManager.addMovieToLibrary(movie: Movie(title: "Sci-Fi"))
    tableViewMock.reloadData()
    
    _ = tableViewMock.cellForRow(at: IndexPath(row: 0, section: 0))
    
    XCTAssertTrue(tableViewMock.cellDequeuedProperly)
  }
  
}


extension MovieLibraryDataServiceTests {
  class TableViewMock: UITableView {
    var cellDequeuedProperly: Bool = false
    
    override func dequeueReusableCell(withIdentifier identifier: String, for indexPath: IndexPath) -> UITableViewCell {
      cellDequeuedProperly = true
      
      return super.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
    }
  }
}
