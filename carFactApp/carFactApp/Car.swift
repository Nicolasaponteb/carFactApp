//
//  CarClass.swift
//  carFactApp
//
//  Created by Nicolas Aponte on 2/23/22.
//

import Foundation

class Car{
    
    // Propiedades
    var color = "neutro"
    var numeroLlantas = 4
    var precio = 0
    
    // Métodos
    func turnOn() -> Bool{
        
        return true
    }
    
    func turnOff() -> Bool{
        
        return false
    }
    
    func speedUp() -> String{
        
        return "Aceleración exitosa"
    }
}
