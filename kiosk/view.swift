//
//  view.swift
//  kiosk
//
//  Created by t2023-m0048 on 2023/07/28.
//

import Foundation

func mainView(){
    print("=================================Main")
    print("""
    
    "Pig3 Rabbit1 에 오신걸 환영합니다."
    아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.

    [ Pig3 Rabbit1 MENU ]
    
    1. Burger | 매장에서 직접 구운 프리미엄 수제버거
    2. Side   | 너무 맛있어서 메인 메뉴로 올려달라고 요청 빗발치는 사이드
    3. Drink  | 매장에서 직접 만드는 음료
    0. Exit   | 프로그램 종료
    """)
    print("Main=================================")
}

// 장바구니에 아이템이 있을 시 메인메뉴에 추가됨
func orderView(){
print("================================Order")
print("""
[ ORDER MENU ]

5. Order  | 장바구니를 확인 후 주문합니다.
6. Cancel | 진행중인 주문을 취소합니다.
""")
print("Order================================")
print("번호 입력", terminator: " ")
}


func menuView(choice:Int, nowAry:[Menu]){
    print("=================================Menu")
    if choice == 0{
        print("[ Burger Menu ]")
    } else if choice == 1{
        print("[ Side Menu ]")
    } else {
        print("[ Drink Menu ]")
    }
        
    for i in 0..<nowAry.count {
        print("\(i + 1). \(nowAry[i].name) | W \(nowAry[i].price)")
    }
    print("0. Back | 뒤로가기")
    print("Menu=================================")
    print("번호 입력", terminator: " ")
}


func shoppingCartView(){
    print("Cart=================================")
    print("위 메뉴를 장바구니에 추가하시겠습니까?")
    print("1. 확인    2. 취소")
    print("=================================Cart")
    print("번호 입력", terminator: " ")
}
