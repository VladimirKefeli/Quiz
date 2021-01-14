//
//  QuestionViewController.swift
//  Quiz
//
//  Created by Владимир Кефели on 13.01.2021.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multiLabels: [UILabel]!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet var rangedLabels: [UILabel]!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    
    
    var questionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        
        func updateSingleStack() {
            singleStackView.isHidden = false
            for button in singleButtons {
                button.setTitle(nil, for: [])
            }
            for (button, answer) in zip(singleButtons, answers) {
                button.setTitle(answer.text, for: [])
            }
        }
        
        func updateMultipleStack() {
            multipleStackView.isHidden = false
            for label in multiLabels {
                label.text = nil
            }
            for (label, answer) in zip(multiLabels, answers) {
                label.text = answer.text
            }
        }
        
        func updateRangedStack() {
            rangedLabels.first?.text = answers.first?.text
            rangedLabels.last?.text = answers.last?.text
            rangedStackView.isHidden = false
        }
        
        
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
        
        
        
        let question = Question.all[questionIndex]
        let answers = question.answers
        let totalProgress = Float(questionIndex) / Float(Question.all.count)
        
        navigationItem.title = "Вопрос № \(questionIndex + 1)"
        questionLabel.text = question.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch question.type {
        case .single:
            updateSingleStack()
        case .multiple:
            updateMultipleStack()
        case .range:
            updateRangedStack()
        }
        
        // TODO: change to segue to results screen
        questionIndex = (questionIndex + 1) % Question.all.count
        
    }
    
    
}
