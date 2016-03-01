//
//  NSColor+Components.swift
//  NSColorComponents
//
//  Created by Jeffrey Morgan on 28/02/2016.
//  Copyright © 2016 Jeffrey Morgan under the MIT License.
//

import Cocoa

public extension NSColor {
  
  /**
   A tuple of the red, green, blue and alpha components of this NSColor calibrated
   in the RGB color space. Each tuple value is a CGFloat between 0 and 1.
   */
  var CGFloatRGB: (red:CGFloat, green:CGFloat, blue:CGFloat, alpha:CGFloat)? {
    if let calibratedColor = colorUsingColorSpaceName(NSCalibratedRGBColorSpace) {
      var redComponent:   CGFloat = 0
      var greenComponent: CGFloat = 0
      var blueComponent:  CGFloat = 0
      var alphaComponent: CGFloat = 0
      calibratedColor.getRed(&redComponent, green: &greenComponent, blue: &blueComponent, alpha: &alphaComponent)
      return (redComponent, greenComponent, blueComponent, alphaComponent)
    }
    return nil
  }

  /**
   A tuple of the red, green, blue and alpha components of this NSColor calibrated
   in the RGB color space. Each tuple value is an Int between 0 and 255.
   */
  var IntRGB: (red:Int, green:Int, blue:Int, alpha:Int)? {
    if let (red, green, blue, alpha) = CGFloatRGB {
      return (Int(red*255), Int(green*255), Int(blue*255), Int(alpha*255))
    }
    return nil
  }
  
}

public extension NSColor {
  
  /**
   A tuple of the hue, saturation, brightness and alpha components of this NSColor
   calibrated in the RGB color space. Each tuple value is a CGFloat between 0 and 1.
   */
  var CGFloatHSB: (hue:CGFloat, saturation:CGFloat, brightness:CGFloat, alpha:CGFloat)? {
    if let calibratedColor = colorUsingColorSpaceName(NSCalibratedRGBColorSpace) {
      var hueComponent:        CGFloat = 0
      var saturationComponent: CGFloat = 0
      var brightnessComponent: CGFloat = 0
      var alphaFloatValue:     CGFloat = 0
      calibratedColor.getHue(&hueComponent, saturation: &saturationComponent, brightness: &brightnessComponent, alpha: &alphaFloatValue)
      return (hueComponent, saturationComponent, brightnessComponent, alphaFloatValue)
    }
    return nil
  }
  
  /**
   A tuple of the hue, saturation, brightness and alpha components of this NSColor
   calibrated in the RGB color space. Each tuple value is an Int between 0 and 255.
   */
  var IntHSB: (hue:Int, saturation:Int, brightness:Int, alpha:Int)? {
    if let (hue, saturation, brightness, alpha) = CGFloatHSB {
      return (Int(hue*255), Int(saturation*255), Int(brightness*255), Int(alpha*255))
    }
    return nil
  }
  
}
