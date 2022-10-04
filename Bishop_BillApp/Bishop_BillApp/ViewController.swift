//
//  ViewController.swift
//  Bishop_BillApp
//
//  Created by Bishop,Mackenzie N on 10/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var productLabel: UITextField!
    
    @IBOutlet weak var unitLabel: UITextField!
    
    @IBOutlet weak var beforeDiscountLabel: UILabel!
    
    @IBOutlet weak var afterDiscountLabel: UILabel!
    
    var perfume:Int = 10
    var tshirt:Int = 35
    var other:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateOnClick(_ sender: UIButton) {
        var enteredProduct = productLabel.text!
        var productPrice:Int
        var total:Int
        var productDiscount:Int = 0
        var enteredUnit = Int(unitLabel.text!)
        var priceAfterDiscount = enteredUnit! - (enteredUnit!*productDiscount/100)
        
        if enteredProduct == "Perfume"{
            productPrice = perfume
            productDiscount = Int(0.02)
        }
        if enteredProduct == "T-Shirt"{
            productPrice = tshirt
            productDiscount = Int(0.04)
            
        }
        else {
            productPrice = other
            productDiscount = 0
        }
        var priceBeforeDiscount = (enteredUnit!*productPrice)
        beforeDiscountLabel.text = "\(enteredProduct) is $\(priceBeforeDiscount)"
        afterDiscountLabel.text = "\(enteredProduct) is $\(priceAfterDiscount)"
        
    }
    

}

