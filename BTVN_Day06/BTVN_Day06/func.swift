//
//  func.swift
//  BTVN_Day06
//
//  Created by Tung on 10/25/19.
//  Copyright © 2019 tung. All rights reserved.
//

import Foundation

func bai1()
{
    print("Nhap so: ")
    var num = Int(readLine()!)!
    var tong = 0
    while num > 0
    {
        tong += num % 10
        num /= 10
    }
    print("Tong cac chu so cua \(num) la: \(tong)")
}


func bai2()
{
    print("Nhap so: ")
    var n = Int(readLine()!)!
    var arr:[Int] = []
    while n > 0
    {
        arr.append(n%10)
        n /= 10
    }
    var j = arr.count - 1
    var i = 0
    while i < j
    {
        if arr[i] == arr[j]
        {
            j -= 1
            i += 1
        }
        else
        {
            print("So khong doi xung")
            break
        }
    }
    if i > j || i == j
    {
        print("So nay doi xung")
    }
}

func bai3()
{
    print("Nhap a: ")
    let a = Double(readLine()!)!
    print("Nhap b: ")
    let b = Double(readLine()!)!
    print("Nhap c: ")
    let c = Double(readLine()!)!
    let delta:Double = Double(b*b - 4*a*c)
    if delta < 0
    {
        print("PT vo nghiem")
    }
    else if delta == 0
    {
        print("PT co nghiem kep x1 = x2 = \(-b/2*a)")
    }
    else
    {
        print("PT co 2 nghiem: ")
        print("x1 = \((-b - sqrt(delta)) / 2*a) ")
        print("x2 = \((-b + sqrt(delta)) / 2*a) ")
        
    }
}

func bai4()
{
    print("Nhap so km: ")
    let s = Int(readLine()!)!
    var price = 5000
    if s <= 31
    {
        price += (s-1) * 4000
    }
    else
    {
        price += 30 * 4000 + (s-31) * 3000
    }
    print("So tien phai tra la: \(price)")
}

