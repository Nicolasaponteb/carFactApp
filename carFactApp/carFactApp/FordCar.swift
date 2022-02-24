//
//  CarFord.swift
//  carFactApp
//
//  Created by Nicolas Aponte on 2/23/22.
//

import Foundation

class FordCar: Car{
    
    // Atributos
    var battery = 100
    
    // Métodos
    func chargeBattery() -> String{
        
        battery = 100
        return "Carga exitosa"
    }
}
