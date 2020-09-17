//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var currentStoryNum = 0
    let storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.titleLabel?.text == storyBrain.storyCollection[currentStoryNum].choice1 {
            currentStoryNum = storyBrain.storyCollection[currentStoryNum].choice1Destination
        } else {
             currentStoryNum = storyBrain.storyCollection[currentStoryNum].choice2Destination
        }
        updateUI()
    }
    
    
    func updateUI() {
        storyLabel.text = storyBrain.storyCollection[currentStoryNum].title
        choice1Button.setTitle(storyBrain.storyCollection[currentStoryNum].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.storyCollection[currentStoryNum].choice2, for: .normal)
    }

}

