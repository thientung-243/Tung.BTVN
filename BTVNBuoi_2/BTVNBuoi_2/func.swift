//
//  func.swift
//  BTVNBuoi_2
//
//  Created by Tung on 10/15/19.
//  Copyright © 2019 Tung. All rights reserved.
//

import Foundation

func kiemTraNam()
{
    let nam = Int(readLine()!)!
    if nam%4 == 0{
        print("Nam \(nam) la nam nhuan")
    }else{
        print("Nam \(nam) khong la nam nhuan")
    }
}
func bai4()
{
    var gio = Int(readLine()!)!
    var phut = Int(readLine()!)!
    var giay = Int(readLine()!)!
    print("Nhap X giay = ")
    let X = Int(readLine()!)!
    giay = giay + X
    if giay < 60
    {
        giay = giay + 0;
    }
    else if giay > 60
    {
        giay = giay + X - 60
        phut = phut + 1
        if phut >= 60
        {
            phut = phut - 60
            gio = gio + 1
        }
    }
    print("Sau khi cong")
    print("\(gio) gio \(phut) phut \(giay) giay ")
}



func bai5()
{
    let m = Int(readLine()!)!
    var n: Int = 1
    var gt: Int = 1
    while gt <= m
    {
        gt *= n
        n += 1
    }
    print(n-1)
}
