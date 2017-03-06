//
//  ViewController.swift
//  PlayGifImage
//
//  Created by wenhe-liu on 03/06/2017.
//  Copyright (c) 2017 wenhe-liu. All rights reserved.
//

import UIKit
import PlayGifImage

class ViewController: UIViewController {

    @IBOutlet weak var lastImageView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //加载普通图片,但是放在images.xcassets里面的图片是加载不出来的
        LoadGifImageTool.loadGifImage(imageView, "ting.jpeg")
        //加载无限播放的gif图片
        LoadGifImageTool.loadGifImage(lastImageView, "gif.jpg", true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

