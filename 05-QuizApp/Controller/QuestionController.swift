//
//  QuestionController.swift
//  05-QuizApp
//
//  Created by Romina Pozzuto on 25/09/2020.
//  Copyright © 2020 Romina Pozzuto. All rights reserved.
//

import UIKit


class QuestionController:  UIViewController {
    
    
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var labelQuestionNumber: UILabel!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var progressView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        let factory = QuestrionsFactory()
        let questions = factory.getRandomQuestion()
        labelQuestion.text = "\(questions)"
    }
    
//    MARK: Seteo de preferencias
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.lightContent
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
}
