// http://techlife.cookpad.com/entry/2014/11/12/170041

// Playground - noun: a place where people can play

import UIKit

let size = CGSize(width: 200, height: 200)
// create uiview
// 型はつけなくても推論してくれるのかな？
let view = UIView(frame: CGRect(origin: CGPointZero, size: size))
view.backgroundColor = UIColor(white: 0.9, alpha: 1.0)


// draw with core graphics
UIGraphicsBeginImageContextWithOptions(size, false, 0)

//// draw
//let path = UIBezierPath()
//path.moveToPoint(CGPointMake(50, 100))
//path.addLineToPoint(CGPointMake(150, 100))
//UIColor.orangeColor().setStroke()
//path.stroke()

// set
//view.layer.contents = UIGraphicsGetImageFromCurrentImageContext().CGImage

//UIGraphicsEndImageContext()

// アイコン画像を描画する
let image = UIImage(named: "http://cdn-ak.f.st-hatena.com/images/fotolife/c/cookpadtech/20140905/20140905114102.png") // 画像出したいときどうしたらいいの？
image?.drawInRect(CGRectMake(0,0, 300, 300))

// バッヂの背景を描画する
let rect = CGRectMake(0, 0, 96, 36)
let roundCorner = UIRectCorner.TopLeft | UIRectCorner.BottomRight
let roundSize = CGSizeMake(6.0, 6.0)
let path = UIBezierPath(roundedRect: rect, byRoundingCorners: roundCorner, cornerRadii: roundSize)
UIColor(red: 0.545, green: 0.678, blue: 0.0, alpha: 1.0).setFill()
path.fill()

// 文字を描画する
let attrString = NSAttributedString(
    string: "おすすめ",
    attributes:[NSForegroundColorAttributeName: UIColor.whiteColor(),
        NSFontAttributeName: UIFont.boldSystemFontOfSize(20.0)])
attrString.drawAtPoint(CGPointMake(6, 4))




let preview = view