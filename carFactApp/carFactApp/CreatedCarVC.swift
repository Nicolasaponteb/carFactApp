//
//  CreatedCarVC.swift
//  carFactApp
//
//  Created by Nicolas Aponte on 2/23/22.
//

import UIKit

class CreatedCarVC: UIViewController {
    
    var carType:Int?
    var simpleCar:Car?
    var fordCar:FordCar?
    
    var carCondition = false

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var showInfoButton: UIButton!
    @IBOutlet weak var turnOnButton: UIButton!
    @IBOutlet weak var turnOffButton: UIButton!
    @IBOutlet weak var speedUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showInfoButton.setTitle("Show Information", for: .normal)
        
        turnOnButton.setTitle("Turn On", for: .normal)
        
        turnOffButton.setTitle("Turn Off", for: .normal)
        
        speedUpButton.setTitle("Speed up", for: .normal)
    
        
        switch carType! {
        case 0:
            simpleCar = Car()
            
            imageView.image = UIImage(named: "automovil")
            
            infoLabel.text = "El automóvil se ha creado correctamente."
        case 1:
            fordCar = FordCar()
            
            imageView.image = UIImage(named: "autoelectrico")
            
            infoLabel.text = "El automóvil eléctrico de marca Ford se ha creado correctamente."
            
        default:
            print("Error")
        }
        
    }
    

    @IBAction func showInfo(_ sender: Any) {
        
        switch carType! {
        case 0:
            simpleCar?.color = "Negro"
            simpleCar?.precio = 5000
            
            infoLabel.text = "El automóvil tiene \(simpleCar!.numeroLlantas) llantas, es de color \(simpleCar!.color) y su precio es de \(simpleCar!.precio) USD."
            
        case 1:
            fordCar!.color = "Azul"
            fordCar!.precio = 10000
            
            infoLabel.text = "El Ford tiene \(fordCar!.numeroLlantas) llantas, es de color \(fordCar!.color) y su precio es de \(fordCar!.precio) USD y su carga está al \(fordCar!.battery) de batería."
            
        default:
            infoLabel.text = "Error"
        }
    }
    
    @IBAction func turnON(_ sender: Any) {
        
        switch carType!{
        case 0:
            if(!carCondition){
                carCondition = simpleCar!.turnOn()
                infoLabel.text = "El automóvil ecendió correctamente."
            }else{
                infoLabel.text = "El automóvil ya esta encendido."
            }
        case 1:
            if(!carCondition){
                carCondition = fordCar!.turnOn()
                if(fordCar!.battery >= 1){
                    fordCar!.battery = fordCar!.battery - 1
                }
                infoLabel.text = "El Ford encendió correctamente. La batería restante es de \(fordCar!.battery)"
            }else{
                infoLabel.text = "El ford ya esta encendido."
            }
        default:
            infoLabel.text = "Error"
        }
    }
    
    @IBAction func turnOff(_ sender: Any) {
        
        switch carType!{
        case 0:
            if(carCondition){
                carCondition = simpleCar!.turnOff()
                infoLabel.text = "El automóvil apagó correctamente."
            }else{
                infoLabel.text = "El automóvil ya esta apagado."
            }
        case 1:
            if(carCondition){
                carCondition = fordCar!.turnOff()
                infoLabel.text = "El Ford apagó correctamente."
            }else{
                infoLabel.text = "El Ford ya esta apagado."
            }
        default:
            infoLabel.text = "Error"
        }
    }
    
    @IBAction func speedUP(_ sender: Any) {
        
        switch carType!{
        case 0:
            if(carCondition){
                infoLabel.text = "El automóvil está acelerando."
            }else{
                infoLabel.text = "El automóvil está apagado, no puede acelerar"
            }
        case 1:
            if(carCondition){
                if(fordCar!.battery >= 1){
                    fordCar!.battery = fordCar!.battery - 1
                    infoLabel.text = "El Ford está acelerando. Tu batería es de \(fordCar!.battery)"
                }else{
                    infoLabel.text = "Se ha agotado la batería del Ford, por favor recargala."
                }
                
            }else{
                infoLabel.text = "El automóvil está apagado, no puede acelerar"
            }
        default:
            infoLabel.text = "Error"
        }
    }
}
