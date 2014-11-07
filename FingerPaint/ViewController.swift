//
//  ViewController.swift
//  FingerPaint
//
//  Created by Li JinMa on 14/11/6.
//  Copyright (c) 2014年 Li JinMa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // `self.view` is the root view loaded from the storyboard
        
        // Instantiate the canvas view. It should be the same size and position as the root view.
        let canvasView = CanvasView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.canvasView = canvasView
        self.canvasView.backgroundColor = UIColor.whiteColor()
        
        // Add the canvas view to the root view.
        self.view.addSubview(canvasView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

