//
//  tamgiacpascal.swift
//  BTVN_D10
//
//  Created by Tung on 11/3/19.
//  Copyright © 2019 tung. All rights reserved.
//

import Foundation

func pascalTriangle(){

    print("Nhập chiều cao tam giác: ")
    let h = Int(readLine()!)!
    var arr:[[Int]] = [[1]]
    var arrc:[Int] = [1]
    for i in 1..<h{
        arrc.append(1)
        arr.append(arrc)
    }
    for i in 2..<h{
        for j in 1..<i{
            arr[i][j] = arr[i-1][j-1] + arr[i-1][j]
        }
    }
    for i in arr{
        print(i)
    }
    
}
