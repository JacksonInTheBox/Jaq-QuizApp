//
//  ViewController.swift
//  Jaq QuizApp
//
//  Created by 9i on 12/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var answer: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    var quiz:[Quiz] = [Quiz(questions: "What does JJ weigh?", answers: "220"), Quiz(questions: "What does a CS teacher drink", answers: "Sparkling Water")]
    var index = 0
    var points = 0
    
    @IBAction func next(_ sender: Any) {
        backButton.isHidden = false

        index += 1
        if index < quiz.count {
         
            question.text = quiz[index].questions
        }
        
        
        if index == quiz.count-1
        {
            nextButton.isHidden = true

        }
    
    
}

    
    
    @IBAction func back(_ sender: Any) {
        nextButton.isHidden = false

        if index > 0{
            index -= 1
            question.text = quiz[index].questions
        }
        
        if index == 0
        {
            backButton.isHidden = true

        }
    }
    
    @IBOutlet weak var score: UILabel!
    
    
    @IBAction func submit(_ sender: Any) {
        if (quiz[index].answers == answer.text) {
            points += 1
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = quiz[index].questions
        // Do any additional setup after loading the view.
    }
    
}

