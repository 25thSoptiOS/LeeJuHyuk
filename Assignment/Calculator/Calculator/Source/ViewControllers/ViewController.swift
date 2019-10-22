//
//  ViewController.swift
//  Calculator
//
//  Created by 이주혁 on 2019/10/22.
//  Copyright © 2019 이주혁. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnNumOne: UIButton!
    @IBOutlet weak var btnNumTwo: UIButton!
    @IBOutlet weak var btnNumThree: UIButton!
    @IBOutlet weak var btnNumFour: UIButton!
    @IBOutlet weak var btnNumFive: UIButton!
    @IBOutlet weak var btnNumSix: UIButton!
    @IBOutlet weak var btnNumSeven: UIButton!
    @IBOutlet weak var btnNumEight: UIButton!
    @IBOutlet weak var btnNumNine: UIButton!
    @IBOutlet weak var btnNumZero: UIButton!
    
    @IBOutlet weak var btnDivide: UIButton!
    @IBOutlet weak var btnMultiply: UIButton!
    @IBOutlet weak var btnSubtract: UIButton!
    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var btnResult: UIButton!
    @IBOutlet weak var btnAllClear: UIButton!
    
    @IBOutlet weak var txtFieldDisplay: UITextField!
    
    
    var btnList: [UIButton] = [] // 모든 버튼을 저장한 리스트
    var isFinish:Bool = false // 계산이 완료 됐는지 확인
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setVar()
    }
    
    private func setVar(){
        
        btnList.append(btnNumOne)
        btnList.append(btnNumTwo)
        btnList.append(btnNumThree)
        btnList.append(btnNumFour)
        btnList.append(btnNumFive)
        btnList.append(btnNumSix)
        btnList.append(btnNumSeven)
        btnList.append(btnNumEight)
        btnList.append(btnNumNine)
        btnList.append(btnNumZero)
        
        btnList.append(btnDivide)
        btnList.append(btnMultiply)
        btnList.append(btnSubtract)
        btnList.append(btnAdd)
        btnList.append(btnResult)
        btnList.append(btnAllClear)
        
        for btn in btnList{
            btn.layer.cornerRadius = 50
        }
        
    }
    
    @IBAction func onClickBtn(sender: UIButton){

        if isFinish{
            txtFieldDisplay.text = ""
            isFinish = false
        }
        
        switch sender.titleLabel?.text {
        case "AC":
            txtFieldDisplay.text = ""
            break
        case "=":
            txtFieldDisplay.text = calculate(txtFieldDisplay.text ?? "")
            isFinish = true
            break
        case "/","X","+","-":
            txtFieldDisplay.text?.append(" " + sender.titleLabel!.text! + " ") // 연산자와 숫자를 분리할 공백 설정
            break
        default:
            txtFieldDisplay.text?.append(sender.titleLabel!.text!)
        }
    }
    
    func changePostfix(_ expression: String) -> [String]{
        // parameter : 계산식
        // return : 계산식을 postfix 형식으로 변환한 String Type List 리턴
        // 일반 연산식을 후위 연산(Postfix)으로 변경하는 함수
        
        var postfixList: [String] = []
        var operStack: [String] = []    // Stack처럼 사용할 List
        
        let seperatedExpr:[String] = expression.components(separatedBy: " ")
        
        // 일반 연산식을 postfix 연산식으로 바꾸는 알고리즘
        for item in seperatedExpr{
            if ["/", "X"].contains(item){
                if operStack.isEmpty{
                    operStack.append(item)
                }
                else if  ["/", "X"].contains(operStack.last){
                    postfixList.append(operStack.popLast()!)
                    operStack.append(item)
                }
                else{
                    operStack.append(item)
                }
                
            }
            else if ["+", "-"].contains(item){
                if operStack.isEmpty{
                    operStack.append(item)
                }
                else{
                    postfixList.append(operStack.popLast()!)
                    operStack.append(item)
                }
            }
            else{
                postfixList.append(item)
            }
        }
        
        while !operStack.isEmpty {
            postfixList.append(operStack.popLast()!)
        }
        
        return postfixList
    }
    
    func calculate(_ expression:String)->String{
        // parameter : 수학적 계산식
        // return : 계산 결과
        // 계산을 수행하는 함수
        let postfixList = changePostfix(expression) // 계산식을 postfix 형식으로 변환
        var calculateStack: [String] = [] // 후위 연산식에 사용할 Stack
        
        for item in postfixList{
            if ["+", "-", "/", "X"].contains(item){
                let rightValue = Double(calculateStack.popLast()!)
                let leftValue = Double(calculateStack.popLast()!)
                
                if rightValue == nil || leftValue == nil {  // 사용자의 잘못된 입력에 대한 Error Exception
                    return "Wrong Input!!"
                }
                
                switch item {
                case "+":
                    calculateStack.append(String(leftValue! + rightValue!))
                    break
                case "-":
                    calculateStack.append(String(leftValue! - rightValue!))
                    break
                case "/":
                    calculateStack.append(String(leftValue! / rightValue!))
                    break
                case "X":
                    calculateStack.append(String(leftValue! * rightValue!))
                    break
                default:
                    break
                }
            }
            else{
                calculateStack.append(item)
            }
        }

        return calculateStack.popLast()!
    }
}

