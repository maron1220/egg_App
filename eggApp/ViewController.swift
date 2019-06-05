//
//  ViewController.swift
//  eggApp
//
//  Created by 細川聖矢 on 2019/06/02.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        messegelabel.text = ""
        countlabel.text = String(count)
        
    }
    var count:Int = 10
    
    //imageのインスタンスを作る
    let image1:UIImage = UIImage(named: "egg01")!
    let image2:UIImage = UIImage(named: "egg02")!
    let image3:UIImage = UIImage(named: "egg03")!
    
    
    
    @IBOutlet weak var countlabel: UILabel!
    
    
    @IBOutlet weak var messegelabel: UILabel!
    
    //actionではなくOutletで設定Outletで設定
    //一つのボタンにactionとOutletを両方設定できる
    @IBOutlet weak var button: UIButton!
    
    @IBAction func eggbutton(_ sender: UIButton) {
        //ここにvar count:Int = 10を入れてしまうと10→9の無限ループになる
        count -= 1
        countlabel.text = String(count)
        
        if(count == 5){
            messegelabel.text = "がんばれ！"
            
            //ボタンにイメージをセット
            button.setImage(image2, for: .normal)
        }else if (count == 0){
            button.setImage(image3, for: .normal)
            messegelabel.text = "おつかれ"
        }else if (count <= -1){
            countlabel.text = "もう押せないよ"
        }
    }
   

}

