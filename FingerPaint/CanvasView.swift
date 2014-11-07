//
//  CanvasView.swift
//  FingerPaint
//
//  Created by Li JinMa on 14/11/6.
//  Copyright (c) 2014年 Li JinMa. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    let zigzag = [CGPointMake(100,100),
        CGPointMake(100,150),CGPointMake(150,150),
        CGPointMake(150,200)]
    
    override func drawRect(rect: CGRect)
    {
        // Get the drawing context.
        let context = UIGraphicsGetCurrentContext()
        
        // Create the shape (a vertical line) in the context.
        CGContextBeginPath(context)
        CGContextAddLines(context, zigzag, UInt(zigzag.count))
        
        // Configure the drawing environment.
        CGContextSetStrokeColorWithColor(context,UIColor.redColor().CGColor)
        
        // Request the system to draw.
        CGContextStrokePath(context)
    }

}
