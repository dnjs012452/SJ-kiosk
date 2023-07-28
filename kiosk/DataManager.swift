//
//  model.swift
//  pig3rabbit1
//
//  Created by t2023-m0048 on 2023/07/24.
//

import Foundation


// 버거 데이터
var burgers = [
    Menu("Cheese Burger", 8300),
    Menu("Chicken Breast Burger", 9300),
    Menu("Bunpatty Burger", 10300),
    Menu("Guacamole Burger", 10800),
    Menu("Guacamole", 10800)]


// 사이드 데이터
var sides = [
    Menu("French Fries", 4900),
    Menu("Guacamole Fries", 6900),
    Menu("Sweet Potato", 6900),
    Menu("Onion Ring", 7900)]


// 드링크 데이터
var drinks = [
    Menu("Evian", 1500),
    Menu("Vanilla Shake", 6500),
    Menu("Oreo Shake", 7000),
    Menu("Lemonade", 5000)]

var datas = [burgers, sides, drinks]
// 장바구니 아이템
var carts = [String]()

// 장바구니 가격
var cartPrice = [Int]()
