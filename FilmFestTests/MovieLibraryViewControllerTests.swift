//
//  MovieLibraryViewControllerTests.swift
//  FilmFest
//
//  Created by Emmanuoel Haroutunian on 3/5/17.
//  Copyright © 2017 Harrison Ferrone. All rights reserved.
//

import XCTest

@testable import FilmFest
class MovieLibraryViewControllerTests: XCTestCase {
  
  var sut: MovieLibraryViewController!
  
  override func setUp() {
    super.setUp()
    
    // Grab storyboard instance of VC
    let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
    sut = storyboard.instantiateViewController(withIdentifier: "MovieLibraryVC") as! MovieLibraryViewController
    // Manually triggers viewDidLoad
    _ = sut.view
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testMovieLibraryVC_TableViewShouldNotBeNil() {
    XCTAssertNotNil(sut.movieTableView)
  }
  
  func testViewDidLoad_SetsTableViewDataSource() {
    XCTAssertNotNil(sut.movieTableView.dataSource)
    XCTAssertTrue(sut.movieTableView.dataSource is MovieLibraryDataService)
  }
  
  func testViewDidLoad_SetsTableViewDelegate() {
    XCTAssertNotNil(sut.movieTableView.delegate)
    XCTAssertTrue(sut.movieTableView.delegate is MovieLibraryDataService)
  }
  
  // Since dataSource and delegate are instance of same object, we should test if that assumption is true
  func testViewDidLoad_SetsTableViewDelegateAndDataSourceToSameObject() {
    XCTAssertEqual(sut.movieTableView.delegate as! MovieLibraryDataService, sut.movieTableView.dataSource as! MovieLibraryDataService)
  }
  
}
