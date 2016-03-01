//
//  RGBComponentTests.swift
//  NSColorComponentsTests
//
//  Created by Jeffrey Morgan on 28/02/2016.
//  Copyright © 2016 Jeffrey Morgan under the MIT License.
//

import XCTest

class TestRGBComponents: XCTestCase {
  
  let aColor = NSColor(calibratedRed: 28.0/255, green: 137.0/255, blue: 231.0/255, alpha: 0.652)
  
  func testCGFloatColor() {
    if let (red, green, blue, alpha) = aColor.CGFloatRGB {
      XCTAssertEqualWithAccuracy(red,   0.109, accuracy:0.001)
      XCTAssertEqualWithAccuracy(green, 0.537, accuracy:0.001)
      XCTAssertEqualWithAccuracy(blue,  0.905, accuracy:0.001)
      XCTAssertEqualWithAccuracy(alpha, 0.652, accuracy:0.001)
    }
  }
  
  func testIntColor() {
    if let (red, green, blue, alpha) = aColor.IntRGB {
      XCTAssertEqual(red,    28)
      XCTAssertEqual(green, 137)
      XCTAssertEqual(blue,  231)
      XCTAssertEqual(alpha, 166)
    }
  }
  
  func testCGFloatRed() {
    if let (red, green, blue, alpha) = NSColor.redColor().CGFloatRGB {
      XCTAssertEqual(red,   1.0)
      XCTAssertEqual(green, 0.0)
      XCTAssertEqual(blue,  0.0)
      XCTAssertEqual(alpha, 1.0)
    }
  }

  func testIntRed() {
    if let (red, green, blue, alpha) = NSColor.redColor().IntRGB {
      XCTAssertEqual(red,   255)
      XCTAssertEqual(green,   0)
      XCTAssertEqual(blue,    0)
      XCTAssertEqual(alpha, 255)
    }
  }
  
  func testCGFloatGreen() {
    if let (red, green, blue, alpha) = NSColor.greenColor().CGFloatRGB {
      XCTAssertEqual(red,   0.0)
      XCTAssertEqual(green, 1.0)
      XCTAssertEqual(blue,  0.0)
      XCTAssertEqual(alpha, 1.0)
    }
  }
  
  func testIntGreen() {
    if let (red, green, blue, alpha) = NSColor.greenColor().IntRGB {
      XCTAssertEqual(red,     0)
      XCTAssertEqual(green, 255)
      XCTAssertEqual(blue,    0)
      XCTAssertEqual(alpha, 255)
    }
  }

  func testCGFloatBlue() {
    if let (red, green, blue, alpha) = NSColor.blueColor().CGFloatRGB {
      XCTAssertEqual(red,   0.0)
      XCTAssertEqual(green, 0.0)
      XCTAssertEqual(blue,  1.0)
      XCTAssertEqual(alpha, 1.0)
    }
  }
  
  func testIntBlue() {
    if let (red, green, blue, alpha) = NSColor.blueColor().IntRGB {
      XCTAssertEqual(red,     0)
      XCTAssertEqual(green,   0)
      XCTAssertEqual(blue,  255)
      XCTAssertEqual(alpha, 255)
    }
  }

  func testCGFloatCyan() {
    if let (red, green, blue, alpha) = NSColor.cyanColor().CGFloatRGB {
      XCTAssertEqual(red,   0.0)
      XCTAssertEqual(green, 1.0)
      XCTAssertEqual(blue,  1.0)
      XCTAssertEqual(alpha, 1.0)
    }
  }
  
  func testIntCyan() {
    if let (red, green, blue, alpha) = NSColor.cyanColor().IntRGB {
      XCTAssertEqual(red,     0)
      XCTAssertEqual(green, 255)
      XCTAssertEqual(blue,  255)
      XCTAssertEqual(alpha, 255)
    }
  }
  
  func testCGFloatMagenta() {
    if let (red, green, blue, alpha) = NSColor.magentaColor().CGFloatRGB {
      XCTAssertEqual(red,   1.0)
      XCTAssertEqual(green, 0.0)
      XCTAssertEqual(blue,  1.0)
      XCTAssertEqual(alpha, 1.0)
    }
  }
  
  func testIntMagenta() {
    if let (red, green, blue, alpha) = NSColor.magentaColor().IntRGB {
      XCTAssertEqual(red,   255)
      XCTAssertEqual(green,   0)
      XCTAssertEqual(blue,  255)
      XCTAssertEqual(alpha, 255)
    }
  }
  
  func testCGFloatYellow() {
    if let (red, green, blue, alpha) = NSColor.yellowColor().CGFloatRGB {
      XCTAssertEqual(red,   1.0)
      XCTAssertEqual(green, 1.0)
      XCTAssertEqual(blue,  0.0)
      XCTAssertEqual(alpha, 1.0)
    }
  }
  
  func testIntYellow() {
    if let (red, green, blue, alpha) = NSColor.yellowColor().IntRGB {
      XCTAssertEqual(red,   255)
      XCTAssertEqual(green, 255)
      XCTAssertEqual(blue,    0)
      XCTAssertEqual(alpha, 255)
    }
  }
  
  func testCGFloatBlack() {
    if let (red, green, blue, alpha) = NSColor.blackColor().CGFloatRGB {
      XCTAssertEqual(red,   0.0)
      XCTAssertEqual(green, 0.0)
      XCTAssertEqual(blue,  0.0)
      XCTAssertEqual(alpha, 1.0)
    }
  }
  
  func testIntBlack() {
    if let (red, green, blue, alpha) = NSColor.blackColor().IntRGB {
      XCTAssertEqual(red,     0)
      XCTAssertEqual(green,   0)
      XCTAssertEqual(blue,    0)
      XCTAssertEqual(alpha, 255)
    }
  }
  
  func testCGFloatWhite() {
    if let (red, green, blue, alpha) = NSColor.whiteColor().CGFloatRGB {
      XCTAssertEqual(red,   1.0)
      XCTAssertEqual(green, 1.0)
      XCTAssertEqual(blue,  1.0)
      XCTAssertEqual(alpha, 1.0)
    }
  }
  
  func testIntWhite() {
    if let (red, green, blue, alpha) = NSColor.whiteColor().IntRGB {
      XCTAssertEqual(red,   255)
      XCTAssertEqual(green, 255)
      XCTAssertEqual(blue,  255)
      XCTAssertEqual(alpha, 255)
    }
  }
  
}
