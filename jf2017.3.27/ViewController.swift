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
    @IBAction func team1jia(_ sender: Any) {
        temp3 = temp3 + 1
        zteam2.text = "\(temp3)"
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
    

    @IBAction func team2jian(_ sender: Any) {
        temp4 = temp4 - 1
        zteam1.text = "\(temp4)"
    }
    @IBAction func team2jia(_ sender: Any) {
        temp4 = temp4 + 1
        zteam1.text = "\(temp4)"
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
    }
    @IBAction func zhu2(_ sender: Any) {
        z2 = z2 + 1
        h2.text = "\(z2)"
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
    }
    @IBAction func zhu3(_ sender: Any) {
        z3 = z3 + 1
        h3.text = "\(z3)"
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
    }

    @IBAction func zhu4(_ sender: Any) {
        z4 = z4 + 1
        h4.text = "\(z4)"
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
    }
    @IBAction func zhu5(_ sender: Any) {
        z5 = z5 + 1
        h5.text = "\(z5)"
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
    }
    
    @IBOutlet var x1: UITextField!
    @IBOutlet var x2: UITextField!
    @IBOutlet var x3: UITextField!
    @IBOutlet var x4: UITextField!
    @IBOutlet var x5: UITextField!
    
    @IBAction func ke1(_ sender: Any) {
        k1 = k1 + 1
        x1.text = "\(k1)"
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
        
    }
    @IBAction func ke2(_ sender: Any) {
        k2 = k2 + 1
        x2.text = "\(k2)"
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
    }
    @IBAction func ke3(_ sender: Any) {
        k3 = k3 + 1
        x3.text = "\(k3)"
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
    }
    @IBAction func ke4(_ sender: Any) {
        k4 = k4 + 1
        x4.text = "\(k4)"
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
    }
    @IBAction func ke5(_ sender: Any) {
        k5 = k5 + 1
        x5.text = "\(k5)"
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
        h1.text = ""
        h2.text = ""
        h3.text = ""
        h4.text = ""
        h5.text = ""
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
