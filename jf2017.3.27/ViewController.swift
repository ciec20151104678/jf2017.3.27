//
//  ViewController.swift
//  jf2017.3.27
//
//  Created by 20151104678 on 17/3/27.
//  Copyright © 2017年 20151104678. All rights reserved.
//

import UIKit
var temp1 :Int = 0
var temp2 :Int = 0
var temp3 :Int = 0
var temp4 :Int = 0
var z1 :Int = 0
var z2 :Int = 0
var z3 :Int = 0
var z4 :Int = 0
var z5 :Int = 0
var k1 :Int = 0
var k2 :Int = 0
var k3 :Int = 0
var k4 :Int = 0
var k5 :Int = 0

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    var dlg=0
    var flagA=0
    var flagB=0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet var Bimage: UIImageView!
    
    @IBOutlet var Aimage: UIImageView!
    @IBOutlet weak var team1: UITextField!
    @IBOutlet weak var team2: UITextField!

    @IBOutlet weak var segmentedControl: UISegmentedControl!
 
 
    @IBAction func one(_ sender: Any) {
        temp1 = temp1 + 1
        team1.text = "\(temp1)"
        }
    @IBAction func two(_ sender: Any) {
        temp1 = temp1 + 2
        team1.text = "\(temp1)"
    }
    @IBAction func three(_ sender: Any) {
        temp1 = temp1 + 3
        team1.text = "\(temp1)"
    }
    @IBAction func otherone(_ sender: Any) {
        temp2 = temp2 + 1
        team2.text = "\(temp2)"
    }
    @IBAction func othertwo(_ sender: Any) {
        temp2 = temp2 + 2
        team2.text = "\(temp2)"
    }
    @IBAction func otherthree(_ sender: Any) {
        temp2 = temp2 + 3
        team2.text = "\(temp2)"
    }
    @IBOutlet var zteam1: UITextField!
    @IBOutlet var zteam2: UITextField!
    @IBAction func team1jian(_ sender: Any) {
        temp3 = temp3 - 1
        zteam2.text = "\(temp3)"
    }

    @IBAction func team2jian(_ sender: Any) {
        temp4 = temp4 - 1
        zteam1.text = "\(temp4)"
    }
    @IBAction func photo1(_ sender: Any) {
        if dlg==0{
            flagA=1
            flagB=0
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                //初始化图片控制器
                let picker = UIImagePickerController()
                //设置代理
                picker.delegate = self
                //指定图片控制器类型
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                //弹出控制器，显示界面
                self.present(picker, animated: true, completion: {
                    () -> Void in
                })
            }else{
                print("读取相册错误")
            }
        }
    }
    @IBAction func photo2(_ sender: Any) {
        if dlg==0{
            flagB=1
            flagA=0
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                //初始化图片控制器
                let picker = UIImagePickerController()
                //设置代理
                picker.delegate = self
                //指定图片控制器类型
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                //弹出控制器，显示界面
                self.present(picker, animated: true, completion: {
                    () -> Void in
                })
            }else{
                print("读取相册错误")
            }
        }
    }
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]) {
        //查看info对象
        print(info)
        //显示的图片
        let image:UIImage!
        //获取选择的原图
        image = info[UIImagePickerControllerOriginalImage] as! UIImage
        if(flagA==1){Aimage.image = image}
        else if(flagB==1){Bimage.image = image}
        //图片控制器退出
        picker.dismiss(animated: true, completion: {
            () -> Void in
        })
    }
    
    @IBOutlet var h1: UITextField!
    @IBOutlet var h2: UITextField!
    @IBOutlet var h3: UITextField!
    @IBOutlet var h4: UITextField!
    @IBOutlet var h5: UITextField!

    @IBAction func zhu1(_ sender: Any) {
         z1 = z1 + 1
        h1.text = "\(z1)"
        temp3 = temp3 + 1
        zteam2.text = "\(temp3)"
        if(z1==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "罚下1号", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            z1=0
            h1.text = "0"
        }
        if(temp3==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "主队五犯", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }

    }
    @IBAction func zhu2(_ sender: Any) {
        z2 = z2 + 1
        h2.text = "\(z2)"
        temp3 = temp3 + 1
        zteam2.text = "\(temp3)"
        if(z2==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "罚下2号", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            z2=0
            h2.text = "0"
        }
        if(temp3==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "主队五犯", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }

    }
    @IBAction func zhu3(_ sender: Any) {
        z3 = z3 + 1
        h3.text = "\(z3)"
        temp3 = temp3 + 1
        zteam2.text = "\(temp3)"
        if(z3==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "罚下3号", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            z3=0
            h3.text = "0"
        }
        if(temp3==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "主队五犯", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }

    }

    @IBAction func zhu4(_ sender: Any) {
        z4 = z4 + 1
        h4.text = "\(z4)"
        temp3 = temp3 + 1
        zteam2.text = "\(temp3)"
        if(z4==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "罚下4号", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            z4=0
            h4.text = "0"
        }
        if(temp3==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "主队五犯", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    @IBAction func zhu5(_ sender: Any) {
        z5 = z5 + 1
        h5.text = "\(z5)"
        temp3 = temp3 + 1
        zteam2.text = "\(temp3)"
        if(z5==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "罚下5号", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            z5=0
            h5.text = "0"
        }
        if(temp3==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "主队五犯", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBOutlet var x1: UITextField!
    @IBOutlet var x2: UITextField!
    @IBOutlet var x3: UITextField!
    @IBOutlet var x4: UITextField!
    @IBOutlet var x5: UITextField!
    
    @IBAction func ke1(_ sender: Any) {
        k1 = k1 + 1
        x1.text = "\(k1)"
        temp4 = temp4 + 1
        zteam1.text = "\(temp4)"

        if(k1==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "罚下1号", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            k1=0
            x1.text = "0"
        }
        if(temp4==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "主队五犯", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }

        
    }
    @IBAction func ke2(_ sender: Any) {
        k2 = k2 + 1
        x2.text = "\(k2)"
        temp4 = temp4 + 1
        zteam1.text = "\(temp4)"
        if(k2==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "罚下2号", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            k2=0
            x2.text = "0"
        }
        if(temp4==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "主队五犯", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }

    }
    @IBAction func ke3(_ sender: Any) {
        k3 = k3 + 1
        x3.text = "\(k3)"
        temp4 = temp4 + 1
        zteam1.text = "\(temp4)"
        if(k3==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "罚下3号", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            k3=0
            x3.text = "0"
        }
        if(temp4==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "主队五犯", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }

    }
    @IBAction func ke4(_ sender: Any) {
        k4 = k4 + 1
        x4.text = "\(k4)"
        temp4 = temp4 + 1
        zteam1.text = "\(temp4)"
        if(k4==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "罚下4号", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            k4=0
            x4.text = "0"
        }
        if(temp4==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "主队五犯", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }

    }
    @IBAction func ke5(_ sender: Any) {
        k5 = k5 + 1
        x5.text = "\(k5)"
        temp4 = temp4 + 1
        zteam1.text = "\(temp4)"
        if(k5==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "罚下5号", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            k5=0
            x5.text = "0"
        }
        if(temp4==5){
            let alertController = UIAlertController(title: "系统提示",
                                                    message: "主队五犯", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }

    }
    
    @IBOutlet var zhu1: UITextField!
    @IBOutlet var zhu2: UITextField!
    @IBOutlet var zhu3: UITextField!
    @IBOutlet var zhu4: UITextField!
    @IBOutlet var zhu5: UITextField!
    @IBOutlet var ke1: UITextField!
    @IBOutlet var ke2: UITextField!
    @IBOutlet var ke3: UITextField!
    @IBOutlet var ke4: UITextField!
    @IBOutlet var ke5: UITextField!
    
    @IBAction func star(_ sender: Any) {
            let alertController = UIAlertController(title: "系统登录", message: "请输入选手信息", preferredStyle: UIAlertControllerStyle.alert)
            
            alertController.addTextField { (textField:UITextField) in
                textField.placeholder = "主队一号"
            }
            alertController.addTextField { (textField:UITextField) in
                textField.placeholder = "主队二号"
            }
            alertController.addTextField { (textField:UITextField) in
                textField.placeholder = "主队三号"
            }
            alertController.addTextField { (textField:UITextField) in
                textField.placeholder = "主队四号"
            }
            alertController.addTextField { (textField:UITextField) in
                textField.placeholder = "主队五号"
            }
            alertController.addTextField { (textField:UITextField) in
                textField.placeholder = "客队一号"
        }
            alertController.addTextField { (textField:UITextField) in
                textField.placeholder = "客队二号"
        }
            alertController.addTextField { (textField:UITextField) in
                textField.placeholder = "客队三号"
        }
            alertController.addTextField { (textField:UITextField) in
                textField.placeholder = "客队四号"
        }
            alertController.addTextField { (textField:UITextField) in
                textField.placeholder = "客队五号"
        }
        
            let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel, handler: nil)
            let okAction = UIAlertAction(title: "好的", style: UIAlertActionStyle.default) { (UIAlertAction) in
                let nameA = alertController.textFields![0]
                let nameB = alertController.textFields![1]
                let nameC = alertController.textFields![2]
                let nameD = alertController.textFields![3]
                let nameE = alertController.textFields![4]
                let nameF = alertController.textFields![5]
                let nameG = alertController.textFields![6]
                let nameH = alertController.textFields![7]
                let nameI = alertController.textFields![8]
                let nameJ = alertController.textFields![9]
                
                self.zhu1.textAlignment = .center
                self.zhu2.textAlignment = .center
                self.zhu3.textAlignment = .center
                self.zhu4.textAlignment = .center
                self.zhu5.textAlignment = .center
                self.ke1.textAlignment = .center
                self.ke2.textAlignment = .center
                self.ke3.textAlignment = .center
                self.ke4.textAlignment = .center
                self.ke5.textAlignment = .center
                self.zhu1.text = nameA.text
                self.zhu2.text = nameB.text
                self.zhu3.text = nameC.text
                self.zhu4.text = nameD.text
                self.zhu5.text = nameE.text
                self.ke1.text = nameF.text
                self.ke2.text = nameG.text
                self.ke3.text = nameH.text
                self.ke4.text = nameI.text
                self.ke5.text = nameJ.text
        
        }
            alertController.addAction(cancelAction)
            alertController.addAction(okAction)
            
            
            // 弹出
            self.present(alertController, animated: true, completion: nil)
        }
    
    @IBAction func end(_ sender: Any) {
        temp1=0
        temp2=0
        temp3=0
        temp4=0
        z1=0
        z2=0
        z3=0
        z4=0
        z5=0
        k1=0
        k2=0
        k3=0
        k4=0
        k5=0
        zhu1.text=""
        zhu2.text=""
        zhu3.text=""
        zhu4.text=""
        zhu5.text=""
        ke1.text=""
        ke2.text=""
        ke3.text=""
        ke4.text=""
        ke5.text=""
        h1.text = ""
        h2.text = ""
        h3.text = ""
        h4.text = ""
        h5.text = ""
        x1.text = ""
        x2.text = ""
        x3.text = ""
        x4.text = ""
        x5.text = ""
        zteam2.text = ""
        zteam1.text = ""
        team1.text = ""
        team2.text = ""
    }
   
    

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

