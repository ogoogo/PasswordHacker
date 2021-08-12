//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 生越冴恵 on 2021/08/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1:UILabel!
    @IBOutlet var resultLabel2:UILabel!
    @IBOutlet var resultLabel3:UILabel!
    @IBOutlet var resultLabel4:UILabel!
    @IBOutlet var countLabel:UILabel!
    
    var passWord:Int=5432
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func start(){
        for i in 0...9999{
            countLabel.text=String(i)
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0001))
            
            if i == passWord{
                var digits=[Int]()
                for _ in 0...3{
                    digits.append(passWord%10)
                    passWord=passWord/10
                }
                resultLabel1.text=String(digits[0])
                resultLabel2.text=String(digits[1])
                resultLabel3.text=String(digits[2])
                resultLabel4.text=String(digits[3])
                print("正解は\(i)です")
                break
            }
            
        }
        
    }
    @IBAction func reset(){
        passWord=5432
        countLabel.text="スタートボタンで解析開始"
        resultLabel1.text="0"
        resultLabel2.text="0"
        resultLabel3.text="0"
        resultLabel4.text="0"
    }


}

