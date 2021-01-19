//
//  ResultsViewController.swift
//  Quiz
//
//  Created by Владимир Кефели on 13.01.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    let answers: [Answer]
    
    init?(coder: NSCoder, _ answers: [Answer]) {
        self.answers = answers
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("\(#line) \(#function) init(coder:) has not been implemented")
    }
    
    func calculatePersonalityResult() {
        let frequencyOfAnswers = answers.reduce(into: [:]) { counts, answer in
            counts[answer.name, default: 0] += 1
        }
        print(#line, #function, frequencyOfAnswers)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
