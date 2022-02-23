//
//  ViewController.swift
//  carFactApp
//
//  Created by Nicolas Aponte on 2/21/22.
//

import UIKit

class ViewController: UIViewController {
    
    var carType:Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func createSimpleCar(_ sender: Any) {
        
        carType = 0
        
        performSegue(withIdentifier: "segueCreatedCar", sender: self)
    }
    
    
    @IBAction func createFordCar(_ sender: Any) {
        
        carType = 1
        
        performSegue(withIdentifier: "segueCreatedCar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destino = segue.destination as? CreatedCarVC{
            
            destino.carType = self.carType
        }
    }
}

