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

    // select a random phrase from the array passed
    func selectPhrase(phrases: Array<String>) -> String {
        let index = Int(arc4random_uniform(UInt32(phrases.count)))
        return phrases[index]
    }

    // shared controller code
    func setupController(phrase: String) {
        let alertController = UIAlertController(title: "Hello", message: phrase, preferredStyle: UIAlertControllerStyle.alert)

        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))

        present(alertController, animated: true, completion: nil)
    }

    @IBAction func showMessage(sender: AnyObject) {
        var arrayOfPhrases : Array<String> {
            switch sender.tag {
            case 0:
                return ["I am robot!", "001010111110101011", "Beep boop"]
            case 1:
                return ["I am scream!", "AHHHHHHHHHHHHHH", "Boo"]
            case 2:
                return ["I am beer!", "mmmmmmbeeer", "Fizzle Pop Hop"]
            case 3:
                return ["I am dog!", "Woof Woof", "Doggo luv you"]
            case 4:
                return ["I am eggplant!", "Eggplant is puprple", "Eggplant is a vegatable"]
            case 5:
                return ["I am poop!", "Some call me Mr. Hankey", "pppptttt"]
            default:
                return ["I am undefined!"]
             }
        }

        setupController(phrase: selectPhrase(phrases: arrayOfPhrases))
    }
}
