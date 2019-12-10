//
//  ViewController.swift
//  TwoScrollView
//
//  Created by Thiện Tùng on 12/10/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ScrollViewNgang: UIScrollView!
    @IBOutlet weak var ScrollViewDoc: UIScrollView!
    
    var screenWidth = UIScreen.main.bounds.size.width
    var screenHeight = UIScreen.main.bounds.size.height
    
    var scrollNgang: [UIImageView] = []
    var scrollDoc: [UIImageView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        createData()
        setupSlideScrollViewNgang(scrollName: scrollNgang)
        setupSlideScrollViewDoc(scrollName: scrollDoc)
        
    }
    
    func setupSlideScrollViewNgang(scrollName: [UIImageView]){
        ScrollViewNgang.frame = CGRect(x:0, y: 0,
                                  width: screenWidth,
                                  height: screenHeight/3)
        ScrollViewNgang.contentSize = CGSize(width: screenWidth * CGFloat(scrollName.count),
                                        height: screenHeight/3)
        ScrollViewNgang.isPagingEnabled = true
        for i in 0 ..< scrollName.count {
                scrollName[i].frame = CGRect(x: screenWidth * CGFloat(i),
                                         y: 0,
                                         width: screenWidth,
                                         height: screenHeight/3)
            scrollName[i].contentMode = .scaleToFill
            ScrollViewNgang.addSubview(scrollName[i])
        }
        ScrollViewNgang.showsHorizontalScrollIndicator = false
    }
    
    func setupSlideScrollViewDoc(scrollName: [UIImageView]){
        ScrollViewDoc.frame = CGRect(x:0,
                                     y: screenHeight/3,
                                  width: screenWidth,
                                  height: screenHeight/0.666)
        ScrollViewDoc.contentSize = CGSize(width: screenWidth,
                                           height: screenHeight/0.666 * CGFloat(scrollName.count))
        ScrollViewDoc.isPagingEnabled = true
        for i in 0 ..< scrollName.count {
                scrollName[i].frame = CGRect(x: 0,
                                             y: (screenHeight/0.666 * CGFloat(i)),
                                         width: screenWidth,
                                         height: screenHeight/3*2)
            scrollName[i].contentMode = .scaleToFill
            ScrollViewDoc.addSubview(scrollName[i])
        }
        ScrollViewDoc.showsVerticalScrollIndicator = false
    }
    func createData() {
        let data1: UIImageView! = UIImageView.init(image: UIImage(named: "1"))
        let data2: UIImageView! = UIImageView.init(image: UIImage(named: "2"))
        let data3: UIImageView! = UIImageView.init(image: UIImage(named: "3"))
        let data4: UIImageView! = UIImageView.init(image: UIImage(named: "4"))
        let data5: UIImageView! = UIImageView.init(image: UIImage(named: "5"))
        let data6: UIImageView! = UIImageView.init(image: UIImage(named: "6"))
        let data7: UIImageView! = UIImageView.init(image: UIImage(named: "7"))
        let data8: UIImageView! = UIImageView.init(image: UIImage(named: "8"))
        let data9: UIImageView! = UIImageView.init(image: UIImage(named: "9"))
        let data10: UIImageView! = UIImageView.init(image: UIImage(named: "10"))
         scrollNgang = [data1, data2, data3, data4, data5, data6, data7, data8, data9, data10]
        
        let data11: UIImageView! = UIImageView.init(image: UIImage(named: "1.1"))
        let data12: UIImageView! = UIImageView.init(image: UIImage(named: "1.2"))
        let data13: UIImageView! = UIImageView.init(image: UIImage(named: "1.3"))
        let data14: UIImageView! = UIImageView.init(image: UIImage(named: "1.4"))
        let data15: UIImageView! = UIImageView.init(image: UIImage(named: "1.5"))
        let data16: UIImageView! = UIImageView.init(image: UIImage(named: "1.6"))
        let data17: UIImageView! = UIImageView.init(image: UIImage(named: "1.7"))
        let data18: UIImageView! = UIImageView.init(image: UIImage(named: "1.8"))
        let data19: UIImageView! = UIImageView.init(image: UIImage(named: "1.9"))
        let data20: UIImageView! = UIImageView.init(image: UIImage(named: "1.10"))
         scrollDoc = [data11, data12, data13, data14, data15, data16, data17, data18, data19, data20]
        
    }


}

