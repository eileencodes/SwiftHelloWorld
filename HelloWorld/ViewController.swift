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

    // Adds showRobot function to the ViewController class
    @IBAction func showRobot() {
        let arrayOfPhrases = [ "I am robot!", "001010111110101011", "Beep boop"]

        setupController(phrase: selectPhrase(phrases: arrayOfPhrases))
    }

    // Adds showScream function to the ViewController class
    @IBAction func showScream() {
        let arrayOfPhrases = [ "I am scream!", "AHHHHHHHHHHHHHH", "Boo"]

        setupController(phrase: selectPhrase(phrases: arrayOfPhrases))
    }

    // Adds showBeer function to the ViewController class
    @IBAction func showBeer() {
        let arrayOfPhrases = [ "I am beer!", "mmmmmmbeeer", "Fizzle Pop Hop"]

        setupController(phrase: selectPhrase(phrases: arrayOfPhrases))
    }

    // Adds showDog function to the ViewController class
    @IBAction func showDog() {
        let arrayOfPhrases = [ "I am dog!", "Woof Woof", "Doggo luv you"]

        setupController(phrase: selectPhrase(phrases: arrayOfPhrases))
    }

    // Adds showEggplant function to the ViewController class
    @IBAction func showEggplant() {
        let arrayOfPhrases = [ "I am eggplant!", "Eggplant is puprple", "Eggplant is a vegatable"]

        setupController(phrase: selectPhrase(phrases: arrayOfPhrases))
    }

    // Adds showPoop function to the ViewController class
    @IBAction func showPoop() {
        let arrayOfPhrases = [ "I am poop!", "Some call me Mr. Hankey", "pppptttt"]

        setupController(phrase: selectPhrase(phrases: arrayOfPhrases))
    }
}
