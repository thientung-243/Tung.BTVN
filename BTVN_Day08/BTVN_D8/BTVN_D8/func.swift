//
//  func.swift
//  BTVN_D8
//
//  Created by Tung on 10/29/19.
//  Copyright © 2019 tung. All rights reserved.
//

import Foundation

func bai1()
{
    print("Nhap h = ")
    let h = Int(readLine()!)!
    print("Hinh can ve: ")
    for i in 0..<h/2
    {
        for j in 0...i
        {
            print("*", terminator: "")
        }
        print()
    }
    for i in 0..<h/2
    {
        for j in 0..<h/2-i
        {
            print("*", terminator: "")
        }
        print()
    }
}

func bai2()
{
    print("Nhap chieu cao: ")
    let c = Int(readLine()!)!
    let h = c/2
    for i in 1...h
    {
        for j in 1...2*h
        {
            if j >= h-i+1 && j <= h+i-1
            {
                print("*", terminator: "")
            }
            else
            {
                print(" ", terminator: "")
            }
        }
        print()
    }
    for i in (1...h-1).reversed()
    {
        for j in 1...2*h
        {
            if j >= h-i+1 && j <= h+i-1
            {
                print("*", terminator: "")
            }
            else
            {
                print(" ", terminator: "")
            }
        }
        print()
    }
}

func bai3()
{
    print("Nhập ngày:")
    var day = Int(readLine()!)!
    print("Nhập tháng:")
    var month = Int(readLine()!)!
    print("Nhập năm: ")
    var year = Int(readLine()!)!
    var T:Int
    if year % 400 == 0 || year % 4 == 0 && year % 100 != 0 {
        T = 1
    }
    else{
        T = 2
    }
    
    switch month {
    case 1, 3, 5, 7, 8, 10, 12:
        print(" This month has 31 days ")
        if day == 1
        {
            print("Tomorrow is: \(day+1) : \(month) : \(year)")
            day = day - 1 + 31
            month -= 1
            if month < 1
            {
                month += 12
                year -= 1
            }
            print("Yesterday is: \(day) : \(month) : \(year)")
        }
        if day == 31{
            print("Yesterday is: \(day-1) : \(month) : \(year)" )
            day = day + 1 - 31
            month += 1
            if month > 12
            {
                month = month - 12
                year += 1
            }
            print("Tomorrow is: \(day) : \(month) : \(year)")
        }
    case 4, 6, 9, 11:
        print(" This month has 30 days")
        if day == 1
        {
            print("Tomorrow is: \(day+1) : \(month) : \(year)")
            day = day - 1 + 30
            month -= 1
            print("Yesterday is: \(day) : \(month) : \(year)")
        }
        if day == 31{
            print("Yesterday is: \(day-1) : \(month) : \(year)" )
            day = day + 1 - 31
            month += 1
            print("Tomorrow is: \(day) : \(month) : \(year)")
        }
    case 2:
        switch T {
        case 1:
            print("This month has 29 days")
            if day == 1
            {
                print("Tomorrow is: \(day+1) : \(month) : \(year)")
                day = day - 1 + 29
                month -= 1
                print("Yesterday is: \(day) : \(month) : \(year)")
            }
            if day == 29{
                print("Yesterday is: \(day-1) : \(month) : \(year)" )
                day = day + 1 - 29
                month += 1
                print("Tomorrow is: \(day) : \(month) : \(year)")
            }
        case 2:
            print("This month has 28 days-+")
            if day == 1
            {
                print("Tomorrow is: \(day+1) : \(month) : \(year)")
                day = day - 1 + 28
                month -= 1
                print("Yesterday is: \(day) : \(month) : \(year)")
            }
            if day == 28{
                print("Yesterday is: \(day-1) : \(month) : \(year)" )
                day = day + 1 - 28
                month += 1
                print("Tomorrow is: \(day) : \(month) : \(year)")
            }
        

        default:
            print()
        }
    default:
        print()
    }

}

func bai4()
{
    print("Input number: ")
    var number = Int(readLine()!)!
    var ams = Float(number)
    var arr:[Int] = []
    while number > 0 {
        arr.append(number % 10)
        number /= 10
    }
    for i in arr {
        ams = ams - Float(pow(Double(i), Double(arr.count)))
    }
    if ams == 0 {
        print("This is Amstrong number")
    }
    else {
        print("This isn't Amstrong number")
    }
    
}
