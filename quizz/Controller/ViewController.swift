//
//  ViewController.swift
//  quizz
//
//  Created by David Acevedo on 7/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    @IBAction func buttonAnswers(_ sender: UIButton) {
        let userAnswer = sender.titleLabel?.text
        let answer = quizBrain.checkAnswer(userAnswer!)
        if answer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        updateUi()
        quizBrain.nextQuestion()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
        // Do any additional setup after loading the view.
    }
    
    func updateUi () {
        questionLabel.text = quizBrain.getQuizText()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.trueButton.backgroundColor = UIColor.black
            self.falseButton.backgroundColor = UIColor.black
        }
    }
}

