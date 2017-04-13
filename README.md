CenterTextLayer
===

Universal CATextLayer subclass that centers its text vertically.

Requierments
----

* Swift 3.0+
* iOS 8.0+
* tvOS 9.0+
* macOS 10.9+

Install
----

```
use_frameworks!
pod 'CenterTextLayer'
```

Usage
----

It's just a regular `CATextLayer` subclass that center its text.
Use it like any `CATextLayer`

```
let textLayer = CenterTextLayer()
textLayer.frame = bounds
textLayer.string = "Center Text!"
```
