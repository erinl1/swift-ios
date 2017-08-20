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
    
    let questions: [String] = ["caminar", "querer", "preferir", "piensar", "tener", "enseñar", "llegar", "contestar", "preparar", "gustar", "encantar", "interesar", "doler (duele)", "abburir" ]
    let answers: [String] = ["to walk", "to want", "to prefer", "to think", "to have", "to teach or show", "to arrive", "to answer", "to prepare", "to like", "to be pleasing", "to be interesting to", "to hurt", "to bore" ]
 
    
    @IBAction func showAnswer(_ sender: Any) {
        print("Erin Lee")
        if String(switchToggle.isOn) == "true" {
            print("switch!")
            answerLabel.text = answers[clickAnswer]
            answerLabel.font = UIFont.boldSystemFont(ofSize: 25)
            clickAnswer = clickAnswer + 1
            if clickAnswer >= answers.count {
                clickAnswer = 0
            }
        }
        else if String(switchToggle.isOn) == "false" {
            print("switch!")
            answerLabel.text = questions[clickQuestion]
            answerLabel.font = UIFont.boldSystemFont(ofSize: 25)
            clickQuestion = clickQuestion + 1
            if clickQuestion >= questions.count {
                clickQuestion = 0
            }
        }

        //ALERT
        //let alertController = UIAlertController(title:"Answer", message: answers[clickAnswer], preferredStyle: .alert)
        //alertController.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        //self.present(alertController, animated: true, completion: nil)
        
        clickAnswer = clickAnswer + 1
        if clickAnswer >= answers.count {
            clickAnswer = 0
        }
    }
    
    @IBAction func showQuestion(_ sender: Any) {
        print("What is my name?")
        print(switchToggle.isOn)
        if String(switchToggle.isOn) == "false" {
            print("switch!")
            questionLabel.text = answers[clickAnswer]
            questionLabel.font = UIFont.boldSystemFont(ofSize: 25)
            clickAnswer = clickAnswer + 1
            if clickAnswer >= answers.count {
                clickAnswer = 0
            }
            
        }
        else if String(switchToggle.isOn) == "true" {
            print("switch!")
            questionLabel.text = questions[clickQuestion]
            questionLabel.font = UIFont.boldSystemFont(ofSize: 25)
            clickQuestion = clickQuestion + 1
            if clickQuestion >= questions.count {
                clickQuestion = 0
            }
        }
        
    }
    @IBAction func clickRandom(_ sender: Any) {
        let rand: Int = Int(arc4random_uniform(UInt32(questions.count)))
        if String(switchToggle.isOn) == "true" {
            questionLabel.text = questions[rand]
            questionLabel.font = UIFont.boldSystemFont(ofSize: 25)
            answerLabel.text = answers[rand]
            answerLabel.font = UIFont.boldSystemFont(ofSize: 25)
        }
        else if String(switchToggle.isOn) == "false" {
            answerLabel.text = questions[rand]
            answerLabel.font = UIFont.boldSystemFont(ofSize: 25)
            questionLabel.text = answers[rand]
            questionLabel.font = UIFont.boldSystemFont(ofSize: 25)
        }
    }
    
    @IBAction func changeQuestion(_ sender: Any) {
        
        if String(switchToggle.isOn) == "true" {
            let value:Int = Int(questionTextField.text!)!
            questionLabel.text = questions[value-1]
            answerLabel.text = answers[value-1]
        }
        else if String(switchToggle.isOn) == "false" {
            let value:Int = Int(questionTextField.text!)!
            answerLabel.text = questions[value-1]
            questionLabel.text = answers[value-1]
        }
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
        if String(switchToggle.isOn) == "false" {
            let qLabel: String = questionLabel.text!
            let aLabel: String = answerLabel.text!
            questionLabel.text = aLabel
            answerLabel.text = qLabel

        }
        else if String(switchToggle.isOn) == "true" {
            let qLabel: String = questionLabel.text!
            let aLabel: String = answerLabel.text!
            answerLabel.text = qLabel
            questionLabel.text = aLabel
        }
    }
    
    @IBAction func slider(_ sender: Any) {
        if String(switchToggle.isOn) == "true" {
            let sliderVal: Int = Int(sliderSwitch.value)
            questionLabel.text = questions[sliderVal]
            answerLabel.text = answers[sliderVal]
        }
        else if String(switchToggle.isOn) == "false" {
            let sliderVal: Int = Int(sliderSwitch.value)
            answerLabel.text = questions[sliderVal]
            questionLabel.text = answers[sliderVal]
        }
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

