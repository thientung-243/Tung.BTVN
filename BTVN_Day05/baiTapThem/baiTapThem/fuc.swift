//
//  fuc.swift
//  baiTapThem
//
//  Created by Tung on 10/23/19.
//  Copyright © 2019 tung. All rights reserved.
//

import Foundation

func game()
{
    let a = Int.random(in: 1...100)
    print("Doan so tu 1 den 100, moi nhap: ")
    let b = Int(readLine()!)!
//    if a == b
//    {
//        print("Xin chuc mung ban da doan trung!!!")
//    }
//    else if a < b
//    {
//        print("Lớn quá")
//    }
//    else
//    {
//        print("Bé quá")
//    }
    switch b {
    case a:
        print("Xin chuc mung !!!")
    case 0..<a:
        print("Be qua")
    default:
        print("Lớn quá")
    }
}

//Cach 2
func gameRandom()
{
    let random = Int.random(in: 0...100)
       print(random)
       
       func check(){
           print("Nhập n: ")
           let n = Int(readLine()!)!
           
           if n < random {
               print("Bé quá")
               check()
           } else if n > random{
               print("Lớn quá")
               check()
           } else {
               print("Chúc mừng")
           }
       }
       check()
}
