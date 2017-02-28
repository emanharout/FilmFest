//
//  DropShadowView.swift
//  FilmFest
//
//  Created by Emmanuoel Haroutunian on 2/27/17.
//  Copyright © 2017 Harrison Ferrone. All rights reserved.
//

import UIKit

@IBDesignable
class DropShadowView: UIView {

  @IBInspectable var shadowOffset: CGSize = CGSize(width: 0, height: 0)
  @IBInspectable var shadowOpacity: Float = 0

  // Following functions ensure UIView is redrawn when edited in storyboard
  override func awakeFromNib() {
    super.awakeFromNib()
    
    setup()
  }
  
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    
    setup()
  }
  
  override func draw(_ rect: CGRect) {
    super.draw(rect)
    
    setup()
  }
  
  func setup() {
    layer.shadowOffset = shadowOffset
    layer.shadowOpacity = shadowOpacity
  }
  
}
