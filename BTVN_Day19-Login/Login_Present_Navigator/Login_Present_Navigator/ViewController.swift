//
//  ViewController.swift
//  Login_Present_Navigator
//
//  Created by Thiện Tùng on 12/14/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let logo: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "logo")
        view.contentMode = .scaleAspectFit
        
        return view
    }()
    let label1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Smart move"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 25)
        
        return label
    } ()
    let label2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "get your favourite food in a single place"
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16)
        return label
    } ()
    let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.currentPage = 0
        pageControl.numberOfPages = 3
        pageControl.currentPageIndicatorTintColor = .purple
        pageControl.pageIndicatorTintColor = .lightGray
        pageControl.contentScaleFactor = 1.5
        
        return pageControl
    } ()
    let label3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "By tapping Log In, you agree with our Terms of Service and Privacy Policy"
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 12)
        
        return label
    } ()
    let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("LOG IN WITH FACEBOOK", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 22)
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = .purple
        button.layer.cornerRadius = 15
        
        
        return button
    } ()
    let label4: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "We don't post anything to Facebook"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 13)
        
        return label
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: view.bounds.midX,
                                                         y: view.bounds.midY-320),
                                      radius: CGFloat(UIScreen.main.bounds.size.height/2),
                                      startAngle: CGFloat(0),
                                      endAngle: CGFloat(Double.pi * 2),
                                      clockwise: true)

        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath

        //change the fill color
        shapeLayer.fillColor = #colorLiteral(red: 0.247242133, green: 0.07818662075, blue: 0.7418434262, alpha: 0.9115316901)
        //you can change the stroke color
        shapeLayer.strokeColor = #colorLiteral(red: 0.247242133, green: 0.07818662075, blue: 0.7418434262, alpha: 0.9115316901)
        //you can change the line width
        shapeLayer.lineWidth = 3.0

        view.layer.addSublayer(shapeLayer)
        
        view.addSubview(logo)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(button)
        view.addSubview(pageControl)
        setupLayout()
        
        button.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
        
    }
    
    @objc func nextVC(){
        let secondVC = SecondViewController()
       // secondVC.title = "Cake"
        let navigation = UINavigationController(rootViewController: secondVC)
        navigation.modalPresentationStyle = .fullScreen
        navigation.isNavigationBarHidden = true
        present(navigation, animated: true, completion: nil)
    }
    
    func setupLayout () {
        //MARK: logo
        logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 51).isActive = true
        logo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        logo.heightAnchor.constraint(equalTo: logo.widthAnchor, multiplier: 1).isActive = true
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        //MARK: Smart Love
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        label1.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 20).isActive = true
        
        //MARK: label2
        label2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 30).isActive = true
        label2.widthAnchor.constraint(equalToConstant: 270).isActive = true
        //MARK: pageControl
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        pageControl.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 120).isActive = true
        //MARK: label3
        label3.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        label3.topAnchor.constraint(equalTo: pageControl.bottomAnchor, constant: 30).isActive = true
        label3.widthAnchor.constraint(equalToConstant: 270).isActive = true
        //MARK: button
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        button.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 20).isActive = true
        button.widthAnchor.constraint(equalToConstant: 350).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        //MARK: label4
        label4.centerXAnchor.constraint(equalTo: button.centerXAnchor, constant: 0).isActive = true
        label4.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20).isActive = true
        label4.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        
        
        
    
    }
    


}

