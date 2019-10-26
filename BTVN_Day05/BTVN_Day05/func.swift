//
//  func.swift
//  BTVN_Day05
//
//  Created by Tung on 10/20/19.
//  Copyright © 2019 tung. All rights reserved.
//

import Foundation
//Hinh chu nhat dac
func bai1()
{
    print("Nhap chieu dai : ")
    let d = Int(readLine()!)!
    print("Nhap chieu rong : ")
    let r = Int(readLine()!)!
    for i in 1...r
    {
        for j in 1...d
        {
            print("*" , terminator:"")
        }
        print()
    }
}

//Hinh chu nhat rong
func bai2()
{
    print("Nhap chieu dai : ")
    let d = Int(readLine()!)!
    print("Nhap chieu rong : ")
    let r = Int(readLine()!)!
    for i in 1...r
    {
        if i == 1 || i == r
        {
            for j in 1...d
            {
                print("*", terminator: "")
            }
        }
        else
        {
            for j in 1...d
            {
                if j == 1 || j == d
                {
                    print("*", terminator: "")
                }
                else
                {
                    print(" ",terminator: "")
                }
            }
        }
        print()
    }
    //Cach 2: Dung switch
//    print("Nhập vào chiều dài và chiều rộng: ")
//    let m = Int(readLine()!)!
//    let n = Int(readLine()!)!
//
//    for i in 0..<m{
//        switch i {
//        case 0:
//            for _ in 0..<n{
//                print("*", terminator: " ")
//            }
//            print()
//        case 1..<m-1:
//            for j in 0..<n{
//                if j == 0 || j == n - 1{
//                    print("*", terminator: " ")
//                } else {
//                    print(" ", terminator: " ")
//                }
//            }
//            print()
//        case m-1:
//            for _ in 0..<n{
//                print("*", terminator: " ")
//            }
//            print()
//        default:
//            return
//        }
//    }
}
// Tam giac vuong
func bai3()
{
    print("Nhap chieu cao tam giac: ")
    let h = Int(readLine()!)!
    
    for i in 0..<h
    {
        for j in 0...i
        {
            print("*", terminator: "")
        }
        print()
    }
}
//Tam giac can nguoc
func bai4()
{
    print("Nhap n: ")
    let n = Int(readLine()!)!
    var i = n-1
    while i >= 0
    {
        for j in 0..<2*n-1
        {
            if j >= n-1-i && j <= n-1+i
            {
                print("*", terminator:"")
            }
            else
            {
                print(" ", terminator:"")
            }
        }
        print()
        i -= 1
    }
}

func bai5()
{
    print("Nhap so: ")
    var n = Int(readLine()!)!
    var dem = 0
    if n < 1
    {
        print(-1)
    }
    else
    {
        while n > 1
        {
            if n % 2 == 0
            {
                n = n/2
                dem += 1
            }
            else
            {
                n = n*3 + 1
                dem += 1
            }
        }
        print("So phep tinh can lam: \(dem)")
    
    }
}
