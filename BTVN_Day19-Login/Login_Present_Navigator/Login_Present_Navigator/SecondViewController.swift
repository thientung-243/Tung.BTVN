//
//  SecondViewController.swift
//  Login_Present_Navigator
//
//  Created by Thiện Tùng on 12/14/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let pic: UIImageView = {
        let pic = UIImageView()
        pic.translatesAutoresizingMaskIntoConstraints = false
        pic.image = UIImage(named: "cake")
        pic.contentMode = .scaleToFill
        
        return pic
    }()
    let label1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Kung Pao Potato"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 18)
        
        return label
    } ()
    let label2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lunch Box"
        label.textAlignment = .left
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 13)
        
        return label
    } ()
    let label3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mildly spiced indian buttermilk with mint flavor..."
        label.textAlignment = .left
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 13)
        
        return label
    } ()
    let icon: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "icon")
        view.contentMode = .scaleAspectFit
        
        return view
    } ()
    let label4: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Dilivering Food to"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 13)
        
        return label
    } ()
    let label5: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Home (B701, sunder nagar, malad...)"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 15)
        
        return label
    } ()
    let label6: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "50%"
        label.textAlignment = .center
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 70)
        
        return label
    } ()
    let button1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("CHANGE", for: .normal)
        button.titleLabel!.font = .systemFont(ofSize: 15)
        button.backgroundColor = .cyan
        button.layer.cornerRadius = 10

        return button
    } ()
    let button2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("ADD +", for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 20
        
        return button
    } ()
    let bottomView:UIView = {
        let view = UIView ()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.alpha = 0.3
        view.layer.cornerRadius = 20
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(pic)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        view.addSubview(label6)
        view.addSubview(icon)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(bottomView)
        
        setupLayout()
    }
    
    func setupLayout(){
        //MARK: Picture
        pic.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        pic.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        pic.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        pic.heightAnchor.constraint(equalTo: pic.widthAnchor, multiplier: 0.8).isActive = true
        //MARK:Label1
        label1.topAnchor.constraint(equalTo: pic.bottomAnchor, constant: 30).isActive = true
        label1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 22).isActive = true
        label1.widthAnchor.constraint(equalToConstant: 150).isActive = true
        //MARK:Label2
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 2).isActive = true
        label2.leftAnchor.constraint(equalTo: label1.leftAnchor, constant: 0).isActive = true
        label2.widthAnchor.constraint(equalToConstant: 75).isActive = true
        //MARK: label3
        label3.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 5).isActive = true
        label3.leftAnchor.constraint(equalTo: label1.leftAnchor, constant: 0).isActive = true
        label3.widthAnchor.constraint(equalToConstant: 300).isActive = true
        //MARK: icon1
        icon.topAnchor.constraint(equalTo: pic.bottomAnchor, constant: 30).isActive = true
        icon.leftAnchor.constraint(equalTo: label1.rightAnchor, constant: 170).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 50).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //MARK: label4
        label4.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 70).isActive = true
        label4.leftAnchor.constraint(equalTo: label1.leftAnchor, constant: 0).isActive = true
        label4.widthAnchor.constraint(equalToConstant: 120).isActive = true
        //MARK: label5
        label5.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 5).isActive = true
        label5.leftAnchor.constraint(equalTo: label1.leftAnchor, constant: 0).isActive = true
        label5.widthAnchor.constraint(equalToConstant: 250).isActive = true
        //MARK: button1
        button1.centerYAnchor.constraint(equalTo: label5.centerYAnchor, constant: 0).isActive = true
        button1.leftAnchor.constraint(equalTo: label5.rightAnchor, constant: 30).isActive = true
        //MARK: label6
        label6.topAnchor.constraint(equalTo: label5.bottomAnchor, constant: 50).isActive = true
        label6.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        label6.widthAnchor.constraint(equalToConstant: 370).isActive = true
        //MARK: bottomView
        bottomView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        bottomView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        bottomView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
        bottomView.heightAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 1).isActive = true
        //MARK: Button2
        button2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        button2.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 80).isActive = true
        button2.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 0.8).isActive = true
        button2.heightAnchor.constraint(equalToConstant: 70).isActive = true
     
        
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
