//
//  LoadGifImageTool.swift
//  PlayGifImage
//
//  Created by DanLi on 2017/3/6.
//  Copyright © 2017年 CocoaPods. All rights reserved.
//

import UIKit
import ImageIO

public class LoadGifImageTool {

    //
    public class func loadGifImage(_ imageView: UIImageView, _ imageName: String, _ repeate: Bool = true) {
        //加载gif路径
        guard let path = Bundle.main.path(forResource: imageName, ofType: nil) else {
            return
        }
        
        guard let data = NSData(contentsOfFile: path) else {
            return
        }
        //从data中读取数据，并将data转成 CGImageSource对象
        guard let imageSource = CGImageSourceCreateWithData(data, nil) else {
            return
        }
        let imageCount = CGImageSourceGetCount(imageSource)
        
        var images = [UIImage]()
        var totalDuration : TimeInterval = 0
        for i in 0..<imageCount {
            //取出图片，放入数组中，准备播放
            guard let cgImage = CGImageSourceCreateImageAtIndex(imageSource, i, nil) else {
                continue
            }
            let image = UIImage(cgImage: cgImage)
            
            if i == 0 {
                imageView.image = image
            }
            
            images.append(image)
            
            //取出播放时间
            guard let propertites = CGImageSourceCopyPropertiesAtIndex(imageSource, i, nil) as? NSDictionary else {
                continue
            }
            
            //得到image的属性字典
            guard let gifDict = propertites[kCGImagePropertyGIFDictionary] as? NSDictionary else {
                continue
            }
            
            //获取每一帧的时间
            guard let frameDuration = gifDict[kCGImagePropertyGIFDelayTime] as? NSNumber else {
                continue
            }
            
            totalDuration += frameDuration.doubleValue
        }

        startAnimate(imageView, images, totalDuration, repeate)
    }
    
    private class func startAnimate(_ imageView: UIImageView, _ images: [UIImage], _ totalDuration: TimeInterval, _ repeate: Bool) {
        imageView.animationImages = images
        imageView.animationDuration = totalDuration
        imageView.animationRepeatCount = repeate ? 0 : 1;
        
        imageView.startAnimating()
    }
    
}
