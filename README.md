# PlayGifImage

[![CI Status](http://img.shields.io/travis/wenhe-liu/PlayGifImage.svg?style=flat)](https://travis-ci.org/wenhe-liu/PlayGifImage)
[![Version](https://img.shields.io/cocoapods/v/PlayGifImage.svg?style=flat)](http://cocoapods.org/pods/PlayGifImage)
[![License](https://img.shields.io/cocoapods/l/PlayGifImage.svg?style=flat)](http://cocoapods.org/pods/PlayGifImage)
[![Platform](https://img.shields.io/cocoapods/p/PlayGifImage.svg?style=flat)](http://cocoapods.org/pods/PlayGifImage)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

PlayGifImage is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "PlayGifImage"
``` 
```swift

    //加载普通图片,但是放在images.xcassets里面的图片是加载不出来的
    LoadGifImageTool.loadGifImage(imageView, "ting.jpeg")
    //加载无限播放的gif图片
    LoadGifImageTool.loadGifImage(lastImageView, "gif.jpg", true)

```
## Author

wenhe-liu, liu.wen.he@chrjdt.com

## License

PlayGifImage is available under the MIT license. See the LICENSE file for more info.
