# nscolor-components

`NSColorComponents` is a Swift extension to `NSColor` that provides easy access to the RGB and HSB components of an `NSColor`.

## Integration

Configure your Podfile to use `NSColorComponents`:

```
platform :osx
use_frameworks!

target 'MyApp' do
  pod 'NSColorComponents', :git => 'https://github.com/UsabilityEtc/nscolor-components'
end
```

## Use

The `NSColorComponents` extension to `NSColor` adds properties that return tuples of the red, green, blue and alpha components and the hue, saturation, brightness and alpha components.

### RGB Components

The `CGFloatRGB` property returns a tuple of the red, green, blue and alpha components as `CGFloat` values between 0 and 1:

```
if let (red, green, blue, alpha) = NSColor.redColor().CGFloatRGB {
  ...
}
```

The `IntRGB` property returns a tuple of the red, green, blue and alpha components as `Int` values between 0 and 255:

```
if let (red, green, blue, alpha) = NSColor.redColor().IntRGB {
  ...
}
```

### HSB Components

The `CGFloatHSB` property returns a tuple of the hue, saturation, brightness and alpha components as `CGFloat` values between 0 and 1:

```
if let (hue, saturation, brightness, alpha) = NSColor.redColor().CGFloatHSB {
  ...
}
```

The `IntHSB` property returns a tuple of the hue, saturation, brightness and alpha components as `Int` values between 0 and 255:

```
if let (hue, saturation, brightness, alpha) = NSColor.redColor().IntHSB {
  ...
}
```
