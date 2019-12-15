//
//  ViewController.swift
//  ShowListImage
//
//  Created by Taof on 12/6/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        scrollView.backgroundColor = .white
//        scrollView.isPagingEnabled = true // hiểu là phân trang
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    var images: [UIImage] = []
    var texts: [String] = []
    
    var datas = [Name]()
    var dataViews: [Custom2View] = []
    
    var pageControl = UIPageControl()
    
    var timer: Timer!
    
    var pageIndex: CGFloat!
    var n:CGFloat = 0
    var m:CGFloat = 0
    
    @objc var pinchGesture: UIPinchGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
               scrollView.bounces = false
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 10.0
        
    
        view.addSubview(scrollView)
        
        pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(getter: pinchGesture))
       
        //data1()
        data2()
        view.addSubview(pageControl)
        pageControl.frame = CGRect(x: 0, y: view.frame.maxY-50, width: 100, height: 20)
        pageControl.center.x = view.center.x
        pageControl.pageIndicatorTintColor = .cyan
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.numberOfPages = datas.count
        pageControl.currentPage = 0
        view.bringSubviewToFront(pageControl)

        
       // setupImage(images, texts)
        setupImage3(datas)
        
        //zoom(sender: imageView)
        scrollViewDidScroll(scrollView)
       
        //timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
    }
    @objc func pinchGesture(sender: UIPinchGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
        sender.scale = 1
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return self.scrollView
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.scrollView
    }
    
    func zoom(sender:UIPinchGestureRecognizer) {


        if sender.state == .ended || sender.state == .changed {

            let currentScale = self.view.frame.size.width / self.view.bounds.size.width
            var newScale = currentScale*sender.scale

            if newScale < 1 {
                newScale = 1
            }
            if newScale > 9 {
                newScale = 9
            }

            let transform = CGAffineTransform(scaleX: newScale, y: newScale)

            self.scrollView.transform = transform
            sender.scale = 1

        }

    }
    
    @objc func runTimer(){
    
        n = CGFloat(pageControl.currentPage) * UIScreen.main.bounds.size.width
        n += UIScreen.main.bounds.size.width

        //scrollView.contentOffset.x += UIScreen.main.bounds.size.width
//        round(scrollView.contentOffset.x/UIScreen.main.bounds.size.width) += 1
        if n > 5 * UIScreen.main.bounds.size.width {
            timer.invalidate()
            
            //n = 0
            scrollView.contentOffset.x = 0
             n = CGFloat(pageControl.currentPage) * UIScreen.main.bounds.size.width
            
            timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
        }
        scrollView.contentOffset.x = n
        
        
    }
    
    func data1(){
        images = [
            UIImage(named: "apple"),
            UIImage(named: "banana"),
            UIImage(named: "coconut"),
            UIImage(named: "durian"),
            UIImage(named: "grape"),
            UIImage(named: "lemon"),
            UIImage(named: "mango"),
            UIImage(named: "orange"),
            UIImage(named: "strawberry"),
        ] as! [UIImage]
    
    
        texts = [
            "Quả táo",
            "Quả chuối",
            "Quả dừa",
            "Quả sầu riêng",
            "Quả nho",
            "Quả chanh",
            "Quả xoài",
            "Quả cam",
            "Quả dâu"
        ]
    }
    
    func data2(){
        datas = [
            Name(image: "orange", label: "Quả cam"),
            Name(image: "banana", label: "Quả chuối"),
            Name(image: "mango", label: "Quả xoài"),
            Name(image: "coconut", label: "Quả dừa"),
            Name(image: "strawberry", label: "Quả dâu"),
            Name(image: "durian", label: "Quả sầu riêng"),
        ]
    }
    func setupImage(_ arrs: [UIImage], _ brrs: [String]){
        // tính kích thước màn hình
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        //duyệt mảng để addSubview các ảnh con vào trong scrollView
        for i in 0..<arrs.count{
            let imageView = UIImageView(frame: CGRect(x: 0,
                                                      y: height * CGFloat(i),
                                                      width: width,
                                                      height: height))
            let title = UILabel(frame: CGRect(x: 0,
                                              y: height * CGFloat(i) - 200,
                                              width: width,
                                              height: 30))
            imageView.contentMode = .scaleAspectFit
            imageView.image = arrs[i]
            
            title.text = brrs[i]
            title.textColor = .black
            title.font = UIFont.boldSystemFont(ofSize: 64)
            title.textAlignment = .center
            title.center.x = imageView.center.x
            
            scrollView.addSubview(imageView)
            scrollView.addSubview(title)
        }
        
        
        // tính kích thước contentSize của ScrollView
        scrollView.contentSize = CGSize(width: width,
                                        height: scrollView.frame.height * CGFloat(arrs.count))
    }
    
    func setupImage2(_ data: [Name]) {
            let width = UIScreen.main.bounds.size.width
            let height = UIScreen.main.bounds.size.height
            for i in 0..<data.count {
                let subView = CustomView(frame: CGRect(x: 0, y: height/2 * CGFloat(i),
                                                          width: width, height: height/2))
                
                print(subView.frame)
                subView.imageView.image = UIImage(named: data[i].image)
                subView.nameLabel.text = data[i].label
    //            subView.nameLabel.textColor = .white
                
                scrollView.addSubview(subView)
            }
            scrollView.contentSize = CGSize(width: width, height: scrollView.frame.height/2 * CGFloat(data.count))
        }

    func setupImage3(_ dataNames: [Name]) {
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        for i in 0..<dataNames.count {
            let subView = Custom2View(frame: CGRect(x: width * CGFloat(i), y: 0 ,
                                                      width: width, height: height))
            subView.imageView.image = UIImage(named: dataNames[i].image)
            subView.imageView.addGestureRecognizer(pinchGesture)
            subView.imageView.isUserInteractionEnabled = true
            subView.desLabel.text = dataNames[i].label
            dataViews.append(subView)
            scrollView.addSubview(subView)
        }
        scrollView.contentSize = CGSize(width: scrollView.frame.width *
            CGFloat(dataNames.count), height: height)
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageIndex = round(scrollView.contentOffset.x/UIScreen.main.bounds.size.width)
        pageControl.currentPage = Int(pageIndex)
        
        let maximumHorizontalOffset: CGFloat = scrollView.contentSize.width - scrollView.frame.width
        let currentHorizontalOffset: CGFloat = scrollView.contentOffset.x

        // vertical
        let maximumVerticalOffset: CGFloat = scrollView.contentSize.height - scrollView.frame.height
        let currentVerticalOffset: CGFloat = scrollView.contentOffset.y

        let percentageHorizontalOffset: CGFloat = currentHorizontalOffset / maximumHorizontalOffset
        let percentageVerticalOffset: CGFloat = currentVerticalOffset / maximumVerticalOffset

        let percentOffset: CGPoint = CGPoint(x: percentageHorizontalOffset, y: percentageVerticalOffset)

        if(percentOffset.x > 0 && percentOffset.x <= 0.25) {

            dataViews[0].imageView.transform = CGAffineTransform(scaleX: (0.25-percentOffset.x)/0.25, y: (0.25-percentOffset.x)/0.25)
            dataViews[1].imageView.transform = CGAffineTransform(scaleX: percentOffset.x/0.25, y: percentOffset.x/0.25)

        } else if(percentOffset.x > 0.25 && percentOffset.x <= 0.50) {
            dataViews[1].imageView.transform = CGAffineTransform(scaleX: (0.50-percentOffset.x)/0.25, y: (0.50-percentOffset.x)/0.25)
            dataViews[2].imageView.transform = CGAffineTransform(scaleX: percentOffset.x/0.50, y: percentOffset.x/0.50)

        } else if(percentOffset.x > 0.50 && percentOffset.x <= 0.75) {
            dataViews[2].imageView.transform = CGAffineTransform(scaleX: (0.75-percentOffset.x)/0.25, y: (0.75-percentOffset.x)/0.25)
            dataViews[3].imageView.transform = CGAffineTransform(scaleX: percentOffset.x/0.75, y: percentOffset.x/0.75)

        } else if(percentOffset.x > 0.75 && percentOffset.x <= 1) {
            dataViews[3].imageView.transform = CGAffineTransform(scaleX: (1-percentOffset.x)/0.25, y: (1-percentOffset.x)/0.25)
            dataViews[4].imageView.transform = CGAffineTransform(scaleX: percentOffset.x, y: percentOffset.x)
        }
    }
    
   
}


