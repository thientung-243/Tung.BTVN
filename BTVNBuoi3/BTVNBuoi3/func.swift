//
//  func.swift
//  BTVNBuoi3
//
//  Created by Tung on 10/16/19.
//  Copyright © 2019 tung. All rights reserved.
//

import Foundation

func bai3()
{
    var arr:[Int] = [1,5,2,148,-4,30]
    var max = arr[0]
    var max2 = arr[0]
    for i in 1..<arr.count
    {
        if arr[i] > max
        {
            max = arr[i]
        }
    }
    for i in 1..<arr.count
    {
        if (arr[i] > max2 && arr[i] < max)
        {
            max2 = arr[i]
        }
    }
    print(max2)
}
func bai4()
{
    var arr:[Int] = [3,2,5,4,2,3,231,123,5]
    for i in 0..<arr.count
    {
        if arr[i] % 2 == 1
        {
            print("Vi tri so le dau tien la \(i+1)")
            break
        }
    }
    var j:Int = -1
    for i in 0..<arr.count
    {
        if arr[i] % 2 == 0 && i > j
        {
            j = i
        }
    }
    print("Vi tri so chan cuoi cung la \(j+1)")
}

func bai5()
{
    let eChar = "Hello"
    let eChar1 = eChar.reversed()
    for i in eChar1
    {
        print(i)
    }
}

func bai6()
{
    var arr: [Float] = [1,2,3,4,5,-2,-9,2.4]
    var min = arr[0]
    var max = arr[0]
    var tong:Float = 0
    for i in 0..<arr.count
    {
        if min < arr[i]
        {
            min = arr[i]
        }
        if max > arr[i]
        {
            max = arr[i]
        }
        tong += arr[i]
    }
    print("So lon nhat: \(max)")
    print("So nho nhat: \(min)")
    print("TBC day so la: \(tong/Float(arr.count))")
}
func bai7()
{
    var n:Int = Int(readLine()!)!
    
}

func bai8()
{
    var n:Int
    repeat
    {
        print("Nhap n le: ")
        n = Int(readLine()!)!
    }
    while n % 2 == 0
    var i:Int = 0
    var j:Int = n-1
    while j >= 0
    {
        var arr2 = [String] (repeating: "-", count: n)
        for k in 0..<arr2.count
        {
            if k == i || k == j
            {
                arr2[k] = "*"
            }
        }
        j -= 1
        i += 1
        print(arr2)
    }
}
