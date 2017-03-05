//
//  ViewController.swift
//  FilmFest
//
//  Created by Harrison Ferrone on 10/17/16.
//  Copyright © 2016 Harrison Ferrone. All rights reserved.
//

import UIKit
import ChameleonFramework

class MovieLibraryViewController: UIViewController {
  
    @IBOutlet weak var movieTableView: UITableView!
  override var preferredStatusBarStyle: UIStatusBarStyle {
    return .lightContent
  }

    override func viewDidLoad() {
        super.viewDidLoad()
      
      view.backgroundColor = GradientColor(.radial, frame: view.frame, colors: [UIColor.flatSkyBlue(), UIColor.flatNavyBlue()])
    }


}

