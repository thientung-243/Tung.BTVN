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
    if nam % 400 == 0
    {
        print("Nam \(nam) la nam nhuan")
    }
    else if (nam % 4 == 0) && (nam % 100 != 0)
    {
        print("Nam \(nam) la nam nhuan")
    }
    else
    {
        print("Nam \(nam) khong la nam nhuan")
    }
}
func bai4()
{
    print("Nhap gio ")
    var gio = Int(readLine()!)!
    print("Nhap phut ")
    var phut = Int(readLine()!)!
    print("Nhap giay ")
    var giay = Int(readLine()!)!
    print("Nhap X giay = ")
    let X = Int(readLine()!)!
    var addGio = X / 3600
    var addPhut = (X - addGio * 3600) / 60
    var addGiay = X % 60
    if (giay + addGiay) > 59
    {
        giay += addGiay - 60
        addPhut += 1
    }
    else
    {
        giay += addGiay
    }
    
    if (phut + addPhut) > 59
    {
        phut += addPhut - 60
        addGio += 1
    }
    else
    {
        phut += addPhut
    }
    
    if (gio + addGio > 23)
    {
        gio += addGio - 24
    }
    else
    {
        gio += addGio
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

func thoigian(){
    print("Nhap vao gio: ")
    var gio = Int(readLine()!)!
    print("Nhap vao phut: ")
    var phut = Int(readLine()!)!
    print("Nhap vao giay: ")
    var giay = Int(readLine()!)!
    
    print("Nhap vao x < 10000: ")
    let x = Int(readLine()!)!
    
    // in ra thời điểm ban đầu
    print("Thời điểm ban đầu: \(gio):\(phut):\(giay)")
    
    // quy đổi toàn bộ ra giây
    var tongGiay = x + gio*3600 + phut*60 + giay
    
    // quy đổi từ giây sang giờ
    gio = tongGiay / 3600
    tongGiay = tongGiay % 3600
    phut = tongGiay / 60
    giay = tongGiay % 60
    
    if gio >= 24 {
        print("Thời điểm sau \(x) giây là: \(gio - 24):\(phut):\(giay) ngày hôm sau")
    }else{
        print("Thời điểm sau \(x) giây là: \(gio):\(phut):\(giay)")
    }
}
