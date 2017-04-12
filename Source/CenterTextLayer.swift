//
//  CenterTextLayer.swift
//  CenterTextLayer
//
//  Created by Cem Olcay on 12/04/2017.
//
//  http://stackoverflow.com/a/41518502/2048130
//

#if os(iOS) || os(tvOS)
  import UIKit
#elseif os(OSX)
  import AppKit
#endif

public class CenterTextLayer: CATextLayer {

  public override init() {
    super.init()
  }

  public override init(layer: Any) {
    super.init(layer: layer)
  }

  public required init(coder aDecoder: NSCoder) {
    super.init(layer: aDecoder)
  }

  public override func draw(in ctx: CGContext) {
    #if os(iOS) || os(tvOS)
      let multiplier = CGFloat(1)
    #elseif os(OSX)
      let multiplier = CGFloat(-1)
    #endif
    let yDiff = (bounds.size.height - ((string as? NSAttributedString)?.size().height ?? fontSize)) / 2 * multiplier

    ctx.saveGState()
    ctx.translateBy(x: 0.0, y: yDiff)
    super.draw(in: ctx)
    ctx.restoreGState()
  }
}
