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
  
}
