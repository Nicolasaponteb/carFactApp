//
//  CreatedCarVC.swift
//  carFactApp
//
//  Created by Nicolas Aponte on 2/23/22.
//

import UIKit

class CreatedCarVC: UIViewController {
    
    var carType:Int?

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        switch carType! {
        case 0:
            print("Carro Sencillo")
        case 1:
            print("Carro Ford")
        default:
            print("Error")
        }
        
    }
    

    @IBAction func showInfo(_ sender: Any) {
    }
    
    @IBAction func turnON(_ sender: Any) {
    }
    
    @IBAction func turnOff(_ sender: Any) {
    }
    
    @IBAction func speedUP(_ sender: Any) {
    }
}
