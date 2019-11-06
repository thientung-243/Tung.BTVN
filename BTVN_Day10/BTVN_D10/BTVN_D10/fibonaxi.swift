//
//  fibonaxi.swift
//  BTVN_D10
//
//  Created by Tung on 11/3/19.
//  Copyright © 2019 tung. All rights reserved.
//

import Foundation

func fibonaxiNumber(){

    print("Nhap n : ")
    let n = Int(readLine()!)!
    var arr: [Int] = [0, 1]
    var i = 0
    var j = 2
    while i < n {
        i = arr[j-2] + arr[j-1]
        if i > n{
            break
        }
        arr.append(i)
        j += 1
    }
    for i in arr{
        print(i)
    }

    
}


