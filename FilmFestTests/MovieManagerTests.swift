//
//  MovieManagerTests.swift
//  FilmFest
//
//  Created by Emmanuoel Haroutunian on 2/28/17.
//  Copyright © 2017 Harrison Ferrone. All rights reserved.
//

import XCTest

@testable import FilmFest
class MovieManagerTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testMoviesToSeeCount_ReturnsZero() {
    // sut is system under test, convention
    let sut = MovieManager()
    XCTAssertEqual(sut.moviesToSeeCount, 0)
  }
  
  func testMoviesSeen_ReturnsZero() {
    let sut = MovieManager()
    XCTAssertEqual(sut.moviesSeenCount, 0)
  }
  
  
}
