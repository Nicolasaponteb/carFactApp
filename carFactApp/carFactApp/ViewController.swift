//
//  ViewController.swift
//  carFactApp
//
//  Created by Nicolas Aponte on 2/21/22.
//

import UIKit

class ViewController: UIViewController {
    
    var carType:Int?
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var simpleCarButton: UIButton!
    @IBOutlet weak var fordCarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Car Factory"
        titleLabel.font = .boldSystemFont(ofSize: 30)
        
        simpleCarButton.setTitle("Create simple car", for: .normal)
        
        fordCarButton.setTitle("Create Ford car", for: .normal)
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

