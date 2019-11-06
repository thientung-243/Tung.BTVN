//
//  main.swift
//  BTVN_Day07
//
//  Created by Tung on 10/27/19.
//  Copyright © 2019 tung. All rights reserved.
//

import Foundation

//bai6()
var arr = [1, 3, 5, 2 , -2, -5, -7]

print("Mang sap xep: ")
var arr2 = quickSort(arr: arr, lo: 0, hi: arr.count-1)

print("arr2 = \(arr2) ")
