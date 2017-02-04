//
//  ViewController.swift
//  HelloWorld
//
//  Created by Eileen Uchitelle on 2/4/17.
//  Copyright © 2017 Eileen Uchitelle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Adds show message function to the ViewController class
    @IBAction func showRobot() {
        let alertController = UIAlertController(title: "Hello", message: "I am robot!", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))

        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showScream() {
        let alertController = UIAlertController(title: "Hello", message: "I am scream!", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }

    @IBAction func showBeer() {
        let alertController = UIAlertController(title: "Hello", message: "I am beer!", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }

}

