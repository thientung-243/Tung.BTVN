//
//  func.swift
//  BTVN_Day07
//
//  Created by Tung on 10/27/19.
//  Copyright © 2019 tung. All rights reserved.
//

import Foundation

func demNguyenTo()
{
    print("Nhap a")
    let a = Int(readLine()!)!
    print("Nhap b")
    let b = Int(readLine()!)!
    var dem:Int = 0
    for i in a...b
    {
        check(n: i)
        if check(n: i)
        {
            dem += 1
        }
    }
    print(dem)
}
func check(n: Int) -> Bool
{
    var cnt = 0
    for i in 1...Int(sqrt(Double(n)))
    {
        if n%i == 0
        {
            cnt += 1
        }
    }
    if cnt == 1
    {
        return true
    }
    else{
        return false;
    }
}

func bai2()
{
    print("Nhập năm: ")
    let year = Int(readLine()!)!
    print("Nhập tháng: ")
    var month = Int(readLine()!)!
    
    switch month {
    case 1, 3, 5, 7, 8, 10, 12:
        print("Tháng \(month) có 31 ngày")
    case 4, 6, 9, 11:
        print("Thangs \(month) có 30 ngày")
    case 2:
        if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
        {
            print("Tháng 2 có 29 ngày")
        }
        else{
            print("Tháng 2 có 28 ngày")
        }
    default:
        print()
    }
}

func bai5()
{
    print("Nhập mảng: ")
    let string = readLine()!
    let arrString = string.components(separatedBy: " ")
    var arr:[Int] = []
    for i in 0..<arrString.count
    {
        arr.append(Int(arrString[i])!)
    }
    print("Nhập X = ")
    let X = Int(readLine()!)!
    for i in 0..<arr.count
    {
        if arr[i] == timMax(arr: arr)
        {
            arr.append(0)
            for j in (i+1..<arr.count-1).reversed()
            {
                arr[j+1] = arr[j]
            }
            arr[i+1] = X
        }
    }
}
func timMax(arr: [Int]) -> Int
{
    var m = arr[0]
    for i in arr{
        if i > m
        {
            m = i
        }
    }
    return m
}

func bai6()
{
    print("Nhập mảng: ")
    let string = readLine()!
    let arrString = string.components(separatedBy: " ")
    var arr:[Int] = []
    for i in 0..<arrString.count
    {
        arr.append(Int(arrString[i])!)
    }
    for i in 0..<arr.count
    {
        for j in i+1..<arr.count
        {
            if arr[i] > arr[j]
            {
                let m = arr[i]
                arr[i] = arr[j]
                arr[j] = m
            }
        }
    }
    print("Nhập X = ")
    let X = Int(readLine()!)!
    
    for i in 0..<arr.count-1
    {
        if arr[i] <= X && arr[i+1] > X
        {
            arr.append(0)
            for j in (i+1..<arr.count-1).reversed()
            {
                arr[j+1] = arr[j]
            }
            arr[i+1] = X
            
        }
        
    }
    for i in arr
    {
        print(i)
    }
    
    

    
}

func quickSort(arr: [Int], lo: Int, hi: Int) -> [Int]
{
    var arr1 = arr
    var head = lo
    var last = hi
    var mid = (lo+hi) / 2
    while head < last {
        print(head, last)
        while arr1[head] < arr1[mid]
        {
            head += 1
        }
        while arr1[last] > arr1[mid]
        {
            last -= 1
        }
        let tg = arr1[head]
        arr1[head] = arr1[last]
        arr1[last] = tg
        head += 1
        last -= 1
    }
    
    quickSort(arr: arr1, lo: mid, hi: hi)
    quickSort(arr: arr1, lo: lo, hi: mid)
    return arr1
}
