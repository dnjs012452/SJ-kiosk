//
//  page.swift
//  pig3rabbit1
//
//  Created by t2023-m0048 on 2023/07/27.
//

import Foundation

// 메뉴 컨트롤러
func menuController(choice:Int) {
    
    var nowAry = datas[choice]
    
    menuView(choice: choice, nowAry: nowAry)
    
    if let choice = Int(readLine() ?? "0"){
        switch choice {
        case 1...nowAry.count:
            print("You choose \(nowAry[choice - 1].name) | W \(nowAry[choice - 1].price)")
            shoppingCart(item: nowAry[choice - 1].name, price: nowAry[choice - 1].price)
        case 0: break
        default:
            print("다시 입력해주세요.")
        }
    }
}


// 장바구니 페이지
func shoppingCart(item: String, price: Int){
    
    shoppingCartView()

    if let page = readLine(){
        switch page {
        case "1": carts.append(item)
            cartPrice.append(price)
            print("\(item) 장바구니에 추가 되었습니다.")
        case "2": break
        default:
            print("다시 입력해주세요.")
        }
        
    }
}
