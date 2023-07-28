//
//  main.swift
//  pig3rabbit1
//
//  Created by t2023-m0048 on 2023/07/24.
//

import Foundation


// 주문메뉴
func order (){
    print("""

아래와 같이 주문하시겠습니까?

[ Orders ]
\(carts.joined(separator: ", "))

[ Total ]
\(cartPrice.reduce(0, +)) 원

1. 주문
2. 메뉴판

번호 입력
""", terminator: " ")
    
}

// 주문 페이지
func printOrder(){
    var back = 0
    while back == 0 {
        order()
        if let page = readLine(){
            switch page {
            case "1":
                var money : Int = 0
                let randommoney = Int.random(in : 20...30) * 1000
                money += randommoney
                let totalPrice = cartPrice.reduce(0, +)
                if totalPrice <= money {
                    print("현재 잔액은 \(money)원으로 주문이 가능합니다.")
                    carts.removeAll()
                    cartPrice.removeAll()
                    sleep(3)
                    back = 1
                    break
                } else {
                    print("현재 잔액은 \(money)원으로 \(totalPrice - money)이 부족하여 주문이 불가능합니다.")
                    
                }
            case "2":
                back = 1
            default :
                print("다시 입력해주세요.")
            }
            
        }
        
    }
}


// 메인 페이지
func mainController(){
    var exit = 0
    while exit == 0 {
        mainView()
        if carts.count != 0 {
            orderView()
        }
        print("번호 입력", terminator: " ")
        
        if let choice = Int(readLine() ?? "0") {
            switch choice {
            case 1...3:
                menuController(choice: choice - 1)
            case 0:
                exit = -1
                print("프로그램이 종료되었습니다.")
            case 5:
                printOrder()
            case 6:
                carts.removeAll()
                cartPrice.removeAll()
                break
            default:
                print("다시 입력해주세요.")
            }
        }
    }
}


mainController()

