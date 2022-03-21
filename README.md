# carFactApp

<img src="https://i.postimg.cc/wM0Jxw2K/Screen-Shot-2022-03-18-at-12-07-05-AM.png"></img><img src="https://i.postimg.cc/bYT1Rvh6/Screen-Shot-2022-03-18-at-12-07-14-AM.png"></img><img src="https://i.postimg.cc/7YZ0tyPq/Screen-Shot-2022-03-18-at-12-07-25-AM.png"></img><img src="https://i.postimg.cc/R0L0zNGy/simple-Car.gif"></img><img src="https://i.postimg.cc/9QGmGD30/fordCar.gif"></img>

## Description
The application is a menu of a car factory that can makes a simple car and electric ford car. And both of them can execute actions like accelerate, turn on and turn off.

### Built with

The project was built using the Swift programming language in Xcode and using UIKit framework. Git was used for version management.

## Important Code

In this app we have a viewController for the menu and other to the created car that change respectively to the simpleCar Class and fordCar Class.

### Car Classes

One class was created to define the attributes and methods for simple Car and a second class for the electric car that inherits methods and attributes for the simple car Class, and has its own attributes and meethods.

### Menu ViewController

This viewController have two buttons, one for create a simple car and other for create a electric ford car. Also has functions for call a performSegue and a number is assigned to a variable thats represents the car type.

```swift
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
```

### CreatedCar ViewController

This viewController shows a view that change depends on carType defined in the menu viewController.
If the carType variable defined is equal to zero is a simple car, and if the carType is equal to one is  a ford electric car.

We have a four buttons which are showInfo, TurnOn, turnOff and speedUp. Each button have a function that depends the number defined in the carType variable and do an action or call information for the respective class.

For example, this is the code for de actions of showInfo button and the other buttons has a similar actions.

```swift
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
```
