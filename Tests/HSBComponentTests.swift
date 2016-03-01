//
//  HSBComponentTests.swift
//  NSColorComponents
//
//  Created by Jeffrey Morgan on 29/02/2016.
//  Copyright © 2016 Jeffrey Morgan under the MIT License.
//

import XCTest

class TestHSBComponents: XCTestCase {

  let aColor = NSColor(calibratedHue: 0.287, saturation: 0.827, brightness: 0.641, alpha: 0.731)

  func testCGFloatColor() {
    if let (hue, saturation, brightness, alpha) = aColor.CGFloatHSB {
      XCTAssertEqualWithAccuracy(hue,        0.287, accuracy:0.001)
      XCTAssertEqualWithAccuracy(saturation, 0.827, accuracy:0.001)
      XCTAssertEqualWithAccuracy(brightness, 0.641, accuracy:0.001)
      XCTAssertEqualWithAccuracy(alpha,      0.731, accuracy:0.001)
    }
  }
  
  func testIntColor() {
    if let (hue, saturation, brightness, alpha) = aColor.IntHSB {
      XCTAssertEqual(hue,         73)
      XCTAssertEqual(saturation, 210)
      XCTAssertEqual(brightness, 163)
      XCTAssertEqual(alpha,      186)
    }
  }
  
  func testCGFloatRed() {
    if let (hue, saturation, brightness, alpha) = NSColor.redColor().CGFloatHSB {
      XCTAssertEqual(hue,        1.0)
      XCTAssertEqual(saturation, 1.0)
      XCTAssertEqual(brightness, 1.0)
      XCTAssertEqual(alpha,      1.0)
    }
  }
  
  func testIntHSBRed() {
    if let (hue, saturation, brightness, alpha) = NSColor.redColor().IntHSB {
      XCTAssertEqual(hue,        255)
      XCTAssertEqual(saturation, 255)
      XCTAssertEqual(brightness, 255)
      XCTAssertEqual(alpha,      255)
    }
  }
  
  func testCGFloatGreen() {
    if let (hue, saturation, brightness, alpha) = NSColor.greenColor().CGFloatHSB {
      XCTAssertEqualWithAccuracy(hue, 0.333, accuracy:0.001)
      XCTAssertEqual(saturation, 1.0)
      XCTAssertEqual(brightness, 1.0)
      XCTAssertEqual(alpha,      1.0)
    }
  }
  
  func testIntGreen() {
    if let (hue, saturation, brightness, alpha) = NSColor.greenColor().IntHSB {
      XCTAssertEqual(hue,         85)
      XCTAssertEqual(saturation, 255)
      XCTAssertEqual(brightness, 255)
      XCTAssertEqual(alpha,      255)
    }
  }
  
  func testCGFloatBlue() {
    if let (hue, saturation, brightness, alpha) = NSColor.blueColor().CGFloatHSB {
      XCTAssertEqualWithAccuracy(hue, 0.666, accuracy:0.001)
      XCTAssertEqual(saturation, 1.0)
      XCTAssertEqual(brightness, 1.0)
      XCTAssertEqual(alpha,      1.0)
    }
  }
  
  func testIntBlue() {
    if let (hue, saturation, brightness, alpha) = NSColor.blueColor().IntHSB {
      XCTAssertEqual(hue,        170)
      XCTAssertEqual(saturation, 255)
      XCTAssertEqual(brightness, 255)
      XCTAssertEqual(alpha,      255)
    }
  }

  func testCGFloatCyan() {
    if let (hue, saturation, brightness, alpha) = NSColor.cyanColor().CGFloatHSB {
      XCTAssertEqual(hue,        0.5)
      XCTAssertEqual(saturation, 1.0)
      XCTAssertEqual(brightness, 1.0)
      XCTAssertEqual(alpha,      1.0)
    }
  }
  
  func testIntCyan() {
    if let (hue, saturation, brightness, alpha) = NSColor.cyanColor().IntHSB {
      XCTAssertEqual(hue,        127)
      XCTAssertEqual(saturation, 255)
      XCTAssertEqual(brightness, 255)
      XCTAssertEqual(alpha,      255)
    }
  }
  
  func testCGFloatMagenta() {
    if let (hue, saturation, brightness, alpha) = NSColor.magentaColor().CGFloatHSB {
      XCTAssertEqualWithAccuracy(hue, 0.833, accuracy:0.001)
      XCTAssertEqual(saturation, 1.0)
      XCTAssertEqual(brightness, 1.0)
      XCTAssertEqual(alpha,      1.0)
    }
  }
  
  func testIntMagenta() {
    if let (hue, saturation, brightness, alpha) = NSColor.magentaColor().IntHSB {
      XCTAssertEqual(hue,        212)
      XCTAssertEqual(saturation, 255)
      XCTAssertEqual(brightness, 255)
      XCTAssertEqual(alpha,      255)
    }
  }
  
  func testCGFloatYellow() {
    if let (hue, saturation, brightness, alpha) = NSColor.yellowColor().CGFloatHSB {
      XCTAssertEqualWithAccuracy(hue, 0.166, accuracy:0.001)
      XCTAssertEqual(saturation, 1.0)
      XCTAssertEqual(brightness, 1.0)
      XCTAssertEqual(alpha,      1.0)
    }
  }
  
  func testIntYellow() {
    if let (hue, saturation, brightness, alpha) = NSColor.yellowColor().IntHSB {
      XCTAssertEqual(hue,         42)
      XCTAssertEqual(saturation, 255)
      XCTAssertEqual(brightness, 255)
      XCTAssertEqual(alpha,      255)
    }
  }
  

  func testCGFloatBlack() {
    if let (hue, saturation, brightness, alpha) = NSColor.blackColor().CGFloatHSB {
      XCTAssertEqual(hue,        0.0)
      XCTAssertEqual(saturation, 0.0)
      XCTAssertEqual(brightness, 0.0)
      XCTAssertEqual(alpha,      1.0)
    }
  }
  
  func testIntBlack() {
    if let (hue, saturation, brightness, alpha) = NSColor.blackColor().IntHSB {
      XCTAssertEqual(hue,          0)
      XCTAssertEqual(saturation,   0)
      XCTAssertEqual(brightness,   0)
      XCTAssertEqual(alpha,      255)
    }
  }
  
  func testCGFloatWhite() {
    if let (hue, saturation, brightness, alpha) = NSColor.whiteColor().CGFloatHSB {
      XCTAssertEqual(hue,        0.0)
      XCTAssertEqual(saturation, 0.0)
      XCTAssertEqual(brightness, 1.0)
      XCTAssertEqual(alpha,      1.0)
    }
  }
  
  func testIntWhite() {
    if let (hue, saturation, brightness, alpha) = NSColor.whiteColor().IntHSB {
      XCTAssertEqual(hue,          0)
      XCTAssertEqual(saturation,   0)
      XCTAssertEqual(brightness, 255)
      XCTAssertEqual(alpha,      255)
    }
  }

}
