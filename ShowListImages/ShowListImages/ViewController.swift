//
//  ViewController.swift
//  ShowListImages
//
//  Created by Thiện Tùng on 12/6/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

@IBDesignable

class ViewController: UIViewController {
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 0,
                                  width: UIScreen.main.bounds.size.width,
                                  height: UIScreen.main.bounds.size.height)
        scrollView.backgroundColor = .black
        scrollView.isPagingEnabled = true
        return scrollView
    } ()
    
    
    var images: [UIImage] = []
    var tittles: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        images = [UIImage(named: "1"),
                  UIImage(named: "2"),
                  UIImage(named: "3"),
                  UIImage(named: "4"),
                  UIImage(named: "5"),
                  UIImage(named: "6")
            ] as! [UIImage]
        
        
        
        tittles = ["Meow meow", "Ha Loi", "Ba Vi", "Ho Tay", "Tam Dao", "Night"]
        view.addSubview(scrollView)
        setupImages(images, tittles)
    }
    
    func setupImages(_ nameImagesArr: [UIImage], _ nameTittlesArr: [String] ) {
        // tính kích thước màn hình
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        //duyệt mảng để addSubView các ảnh con vào trong scrollView
            //cho scroll chạy ngang
//        for i in 0..<nameImagesArr.count {
//            let imageView = UIImageView(frame: CGRect(x: CGFloat(i)*width,
//                                                      y: 0,
//                                                      width: width,
//                                                      height: height))
//            imageView.contentMode = .scaleAspectFit
//            imageView.image = nameImagesArr[i]
//
//            let labelView = UILabel(frame: CGRect(x: CGFloat(i) * width,
//                                                             y: UIScreen.main.bounds.size.height - CGFloat(70),
//                                                             width: 200,
//                                                             height: 50))
//            labelView.text = nameTittlesArr[i]
//            labelView.textAlignment = .center
//            labelView.backgroundColor = .yellow
//            labelView.font = .italicSystemFont(ofSize: 32)
//            labelView.textColor = .blue
//            labelView.layer.cornerRadius = 10
//            labelView.layer.shadowColor = UIColor.red.cgColor
//            labelView.layer.shadowOpacity = 1
//            labelView.layer.shadowOffset = .zero
//
//
//            labelView.center.x = imageView.center.x
//            scrollView.addSubview(imageView)
//            scrollView.addSubview(labelView)
        
    
        

            //cho scroll chạy dọc
        for i in 0..<nameImagesArr.count {
            let imageView = UIImageView(frame: CGRect(x: 0,
                                                      y: CGFloat(i)*height,
                                                      width: width,
                                                      height: height))

            imageView.contentMode = .scaleAspectFit
            imageView.image = nameImagesArr[i]

            let labelView = UILabel(frame: CGRect(x: width,
                                                  y: CGFloat(i+1) * UIScreen.main.bounds.size.height - CGFloat(70),
                                                  width: 200,
                                                  height: 50))
            labelView.text = nameTittlesArr[i]
            labelView.textAlignment = .center
            labelView.backgroundColor = .yellow
            labelView.font = .italicSystemFont(ofSize: 32)
            labelView.textColor = .blue
            labelView.layer.cornerRadius = 10
            labelView.layer.shadowColor = UIColor.red.cgColor
            labelView.layer.shadowOpacity = 1
            labelView.layer.shadowOffset = .zero


            labelView.center.x = imageView.center.x
            scrollView.addSubview(imageView)
            scrollView.addSubview(labelView)

            
            
        }
        //tính kích thước contentSize của ScrollView
            //cuộn ngang
        //scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(images.count), height: height)
            //cuộn dọc
        scrollView.contentSize = CGSize(width: width, height: height * CGFloat(images.count))
        
    }
}
