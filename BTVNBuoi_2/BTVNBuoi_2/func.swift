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
//lam lai bai nam nhuan
func namNhuan()
{
    var nam:Int
    repeat
    {
        print("Nhap nam: ")
        nam = Int(readLine()!)!
    }
    while nam < 0
    if (nam % 4 == 0 && nam % 100 != 0) || nam % 400 == 0
    {
        print("Nam \(nam) la nam nhuan")
    }
    else{
        print("Nam \(nam) khong nhuan")
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

func congGiay()
{
    print("Nhap gio: ")
    var hour = Int(readLine()!)!
    print("Nhap phut: ")
    var min = Int(readLine()!)!
    print("Nhap giay: ")
    var sec = Int(readLine()!)!
    print("Nhap so giay cong them: ")
    var addSec = Int(readLine()!)!
    addSec += hour*3600 + min*60 + sec 
    hour = addSec / 3600
    addSec = addSec - hour*3600
    if( hour > 23 )
    {
        hour -= 24
    }
    min = addSec / 60
    sec  = addSec % 60
    print("Sau khi cong: \(hour) gio \(min) phut \(sec) giay")
}
