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
    var arr:[Int] = [1,5,2,148,148,-4,30,30,30]
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

func bai52()
{
   
   
}
//bai5 cach 2
func bai5()
{
    let eString = "Hello"
    var daoChuoi: [Character] = []
    for i in eString
    {
        daoChuoi.insert(i, at: 0)
    }
//cach 2
    var chuoiB = String() //khai báo chuỗi rỗng
    // duyệt kí tự của một chuỗi string
    for i in eString {
        chuoiB = String(i) + chuoiB //cong tung ki tu vao truoc chuoi
        print("chuoiB: --> \(chuoiB)")
    }
    print(chuoiB)
}
func daonguoc()
{
    print("Nhap chuoi ")
    var sString = String(readLine()!)
    var result = ""
    for i in sString
    {
        let s = String(i)
        let lowerCase = s.lowercased()
        let upperCase = s.uppercased()
        result += (s == lowerCase) ? upperCase : lowerCase
        //if s == lowerCase -> upperCase else lowerCase
    }
    print(result)
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
    print("Nhap n: ")
    let n = Int(readLine()!)!
    for i in 0..<n
    {
        for j in 0..<2*n-1
        {
            if j >= n-1-i && j <= n-1+i
            {
                print("*", terminator:"")
            }
            else
            {
                print(" ", terminator:"")
            }
        }
        print()
    }
//Cach 2
//    for i in 0..<n
//    {
//        let space_str = String(repeating: "a", count: 2 * (N - i - 1))
//        let star_str = String(repeating: "* ", count: 2 * i + 1)
//
//        print(space_str + star_str)
//    }
    
}


func bai8()
{
    print("Nhập chiều cao h (h > 1 và h lẻ):")
    let h = Int(readLine()!)!
    
    if h < 0 || h % 2 == 0 {
        print("Chiều cao không hợp lệ")
        bai8()
    }
    else
    {
        for i in 0..<h
        {
            for j in 0..<h
            {
                if i==j || i+j==h-1
                {
                    print("*" , terminator:"")
                }
                else
                {
                    print(" ", terminator:"")
                }
            }
            print()
        }
    }
}

//Sap xep mang so nguyen theo chieu tang dan va giam dan
func sapXepGiamDan()
{
    var arr:[Int] = [1, 5, -2, 9, 12, -53, 8, 0]
    for i in 0..<arr.count
    {
        for j in i+1..<arr.count
        {
            if (arr[i] < arr[j])
            {
                arr.swapAt(i, j)
            }
        }
    }
    for i in 0..<arr.count
    {
        print(arr[i])
    }
}
func sapXepTangDan()
{
    var arr:[Int] = [1, 5, -2, 9, 12, -53, 8, 0]
    for i in 0..<arr.count
    {
        for j in i+1..<arr.count
        {
            if (arr[i] > arr[j])
            {
                arr.swapAt(i, j)
            }
        }
    }
    for i in 0..<arr.count
    {
        print(arr[i])
    }
}
//Viết chương trình nhập vào một số nguyên dương không lớn hơn 10000, in ra màn hình chữ số lớn thứ nhì có trong số đó (ví dụ nhập n = 1356 in ra 5). Trong trường hợp không có số lớn thứ nhì, thì in ra số lớn nhất.
func timsoMax2()
{
    var n: Int
    repeat
    {
        print("Nhap n= ")
        n = Int(readLine()!)!
    }
    while n > 10000
    var a = n / 10000
    var b = (n - a*10000) / 1000
    var c = (n - a*10000 - b*1000) / 100
    var d = (n - a*10000 - b*1000 - c*100) / 10
    var e = n % 10
    var m = a
    let arr = [a, b, c, d, e]
    var v = max(a, b, c, d, e)
    for i in 0..<arr.count
    {
        if arr[i] < v && arr[i] > m
        {
            m = arr[i]
        }
    }
    print("So max thu 2 la \(m)")
}

func catChuoi()
{
    var string = readLine()!
    var arrString = string.components(separatedBy: ",")
    var arr:[Int] = []
    for i in 0..<arrString.count
    {
        arr.append(Int(arrString[i])!)
    }
    print(arr)
    
}
func nhapMang()
{
    var string = readLine()!
    var arrString = string.components(separatedBy: " ")
    var arr:[Int] = []
    for i in 0..<arrString.count
    {
        arr.append(Int(arrString[i])!)
    }
    print(arr)
}
func timUoc()
{
    print("Nhap n = ")
    let n = Int(readLine()!)!
    var arr2:[Int] = []
    for i in 1...n/2
    {
        if n % i == 0
        {
            arr2.append(i)
        }
    }
    for i in arr2
    {
        print(i)
    }
}

func hoTen()
{
    print("Nhap ten: ")
    var name = String(readLine()!)
    var ho:String = ""
    var ten:String = ""
    for i in name
    {
        if i == " "
        {
            break
        }
        else
        {
            ho = ho + String(i)
        }
    }
    for i in name.reversed()
    {
        if i != " "
        {
            ten = String(i) + ten
        }
        else
        {
            break
        }
    }
    var hoten = ho + " " + ten
    print(hoten)
    
}

func dapAn()
{
    print("Dau khong phai la mot ngon ngu lap trinh: ")
    print("A: Golang")
    print("B: Swift")
    print("C: Ruby")
    print("D: Daily")
    var result: String
    repeat
    {
        print("Nhap dap an: ")
        result = readLine()!
    }
    while result != "a" && result != "b" && result != "c" && result != "d"
    switch result
    {
    case "a":
        print("Dap an sai")
    case "b":
        print("Dap an sai")
    case "c":
        print("Dap an sai")
    default:
        print("Dap an dung")
        
    }
}
func soHoanHao()
{
    print("Nhap n = ")
    let n = Int(readLine()!)!
    var arr:[Int] = []
    for j in 2...n
    {
        var tong:Int = 0
        for i in 1...j/2
        {
            if j % i == 0
            {
                tong += i
            }
        }
        
        if tong == j
        {
            arr.append(j)
        }
    }
    if arr.count > 0
    {
        for i in arr
        {
            print(i)
        }
    }
    else
    {
        print("Khong co so hoan hao")
    }
}

