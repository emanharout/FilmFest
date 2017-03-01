//
//  MovieStructTests.swift
//  FilmFest
//
//  Created by Emmanuoel Haroutunian on 2/27/17.
//  Copyright © 2017 Harrison Ferrone. All rights reserved.
//

import XCTest

@testable import FilmFest
class MovieStructTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  // All test functions start with word test, followed by what you are testing (movie struct initializer)
  // and what you expect the result to be (movie title will be set)
  func testInit_SetMovieTitle() {
    let movie = Movie(title: "Summer Blockbuster")
    XCTAssertEqual(movie.title, "Summer Blockbuster")
  }
  
  func testInit_SetMovieTitleAndReleaseDate() {
    let movie = Movie(title: "Romantic Comedy", releaseDate: "2/10/87")
    XCTAssertEqual(movie.releaseDate, "2/10/87")
  }
}
