//
//  ViewController.swift
//  CarouselView
//
//  Created by 谢某某 on 16/4/5.
//  Copyright © 2016年 谢某某. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.edgesForExtendedLayout = .None
        
        let carouselV = CarouselView(frame: CGRect(x: 0, y: 0, width: 375, height: 300))

        let arr = ["http://img04.sogoucdn.com/app/a/100520020/50c11a6a4b7a4da664e93a9cf4c061ce",
                   "http://img04.sogoucdn.com/app/a/100520024/1f9163519dac6b2138c7d96b5598467e",
                   "http://img01.sogoucdn.com/app/a/100520024/e2f057ede9d3cafabed15418bad2ee17",
                   "http://img01.sogoucdn.com/app/a/100520020/2001859ba6fca0a525728c7568782d89",
                   "http://img04.sogoucdn.com/app/a/100520024/f4d580ab0d9f5d514c9471b23bba0561",
                   "http://img03.sogoucdn.com/app/a/100520024/30e8009fb8710f519b565b1cd17df7ec",
                   "http://img02.sogoucdn.com/app/a/100520020/992e6ea334d3d1c34abfa5ea1ec0978a"]
//        arr.appendContentsOf((1...8).flatMap(String.init))
        
        carouselV.imagePath = arr
        carouselV.timeInterval = 2.0
        carouselV.backgroundColor = UIColor.whiteColor()
        
//        carouselV.clickImageView = {
//            debugPrint($0)
//        }
        carouselV.delegate = self
        view.addSubview(carouselV)
    }
}

extension ViewController: CarouselViewDelegate
{
    func carouselViewDidSelect(carouselView car: CarouselView, index: Int) {
//        debugPrint("点击\(index)")
    }
    
    func carouselViewDidEndAnimation(carouselView car: CarouselView, index: Int) {
//        debugPrint("结束动画\(index)")
    }
    
    func carouselViewWillChangeDirection(carouselView car: CarouselView, index: Int, originalDir: Direction, presentDir: Direction) {
//        debugPrint("改变方向\(index)")
//        debugPrint("originalDir - \(originalDir)")
//        debugPrint("presentDir - \(presentDir)")
    }
}







