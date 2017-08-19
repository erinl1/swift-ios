//
//  ViewController.swift
//  quiz
//
//  Created by Erin Lee on 8/18/17.
//  Copyright © 2017 Erin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //variable for label
    @IBOutlet weak var questionLabel: UILabel!
    //variable for label
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var switchToggle: UISwitch!
    @IBOutlet weak var sliderSwitch: UISlider!

    var clickQuestion: Int = 0
    var clickAnswer: Int = 0
    
    let questions: [String] = ["hola", "como estas?", "comer", "la mesa"]
    let answers: [String] = ["hello", "how are you?", "to eat", "the table"]
    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = answers[clickAnswer]
        answerLabel.font = UIFont.boldSystemFont(ofSize: 25)
        print("Erin Lee")
        let alertController = UIAlertController(title:"Answer", message: answers[clickAnswer], preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        self.present(alertController, animated: true, completion: nil)
        clickAnswer = clickAnswer + 1
        if clickAnswer >= answers.count {
            clickAnswer = 0
        }
    }
    
    @IBAction func showQuestion(_ sender: Any) {
        print("What is my name?")
        questionLabel.text = questions[clickQuestion]
        questionLabel.font = UIFont.boldSystemFont(ofSize: 25)
        clickQuestion = clickQuestion + 1
        if clickQuestion >= questions.count {
            clickQuestion = 0
        }
    }
    @IBAction func clickRandom(_ sender: Any) {
        let rand: Int = Int(arc4random_uniform(UInt32(questions.count)))
        questionLabel.text = questions[rand]
        questionLabel.font = UIFont.boldSystemFont(ofSize: 25)
        answerLabel.text = answers[rand]
        answerLabel.font = UIFont.boldSystemFont(ofSize: 25)
    }
    
    @IBAction func changeQuestion(_ sender: Any) {
        let value:Int = Int(questionTextField.text!)!
        questionLabel.text = questions[value-1]
        answerLabel.text = answers[value-1]
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("this works")
        textField.resignFirstResponder()
        return true
    }
    @IBAction func dismissKeyboard(_ sender: Any) {
        questionTextField.resignFirstResponder()
        print("go away")
    }
    
    @IBAction func switchToggle(_ sender: UISwitch) {
        print(sender.isOn)
    }
    
    @IBAction func slider(_ sender: Any) {
        let sliderVal: Int = Int(sliderSwitch.value)
        questionLabel.text = questions[sliderVal]
        answerLabel.text = answers[sliderVal]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderSwitch.maximumValue = Float(questions.count-1)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

