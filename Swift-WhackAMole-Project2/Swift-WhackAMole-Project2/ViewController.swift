//
//  ViewController.swift
//  Swift-WhackAMole-Project2
//
//  Created by Kyle Meserve on 2/1/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var timer = Timer()
  var gopherTimer = Timer()
  var timerCounter = 0
  var currentScore: Int = 0
  var defaultHiScore = 0
  var selectedGopher: Int = 0
  var lastSelectedGopher: Int = 0
  var gophersShown: Int = 0
  var gamesPlayed: Int = 0
  @IBOutlet weak var score: UILabel!
  @IBOutlet weak var hiScore: UILabel!
  @IBOutlet weak var timerLabel: UILabel!
  // gopher image from https://favpng.com/
  @IBOutlet weak var gopher1: UIImageView!
  @IBOutlet weak var gopher2: UIImageView!
  @IBOutlet weak var gopher3: UIImageView!
  @IBOutlet weak var gopher4: UIImageView!
  @IBOutlet weak var gopher5: UIImageView!
  @IBOutlet weak var gopher6: UIImageView!
  @IBOutlet weak var gopher7: UIImageView!
  @IBOutlet weak var gopher8: UIImageView!
  @IBOutlet weak var gopher9: UIImageView!
 
  @IBAction func startGame(_ sender: Any) {
    
    // Resets score
    currentScore = 0
    gophersShown = 0
    score.text = "Score: \(currentScore)"
    startGophers()
    
    // Loads timer
    timerCounter = 16
    timerLabel.text = "Timer: \(timerCounter - 1)"
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(startTimer), userInfo: nil, repeats: true)
//    gopherTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(startGophers), userInfo: nil, repeats: true)
    
    
  }
  
  func setHighScoreText (number: Int) {
    hiScore.text = "High-Score: \(number)"
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // This sets each gopher to be tappable and also connects them to increment the score when tapped
    let arrOfGophers = [gopher1, gopher2, gopher3, gopher4, gopher5, gopher6, gopher7, gopher8, gopher9]
    for gopher in arrOfGophers {
      gopher?.isUserInteractionEnabled = true
      gopher?.isHidden = true
      let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scoreUp))
      gopher?.addGestureRecognizer(gestureRecognizer)
    }
    
    // Gets saved hi-score and displays text
    let currentHiScore = UserDefaults.standard.object(forKey: "hi-score")
    
    if (currentHiScore as? Int) != nil {
      setHighScoreText(number: currentHiScore as! Int)
    } else {
      setHighScoreText(number: 0)
    }
    
  }
  
  // Start gophers showing up one at a time
  func startGophers() {
    
    gopherTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(gopherStuff), userInfo: nil, repeats: true)
    

  }
  
  func checkScore() {
    let currentHiScore = UserDefaults.standard.object(forKey: "hi-score")
    
    if (currentHiScore as? Int) != nil {
      if (currentHiScore as! Int) < currentScore {
        UserDefaults.standard.set(currentScore, forKey: "hi-score")
        setHighScoreText(number: currentScore)
      }
    } else {
      UserDefaults.standard.set(currentScore, forKey: "hi-score")
      setHighScoreText(number: currentScore)
    }
    
  }
  
  func swapVisibleGopher(randomNumber: Int) {
    let arrOfGophers = [gopher1, gopher2, gopher3, gopher4, gopher5, gopher6, gopher7, gopher8, gopher9]
    print(randomNumber)
    if gamesPlayed > 0 && gophersShown == 0 {
      arrOfGophers[lastSelectedGopher]!.isHidden = !arrOfGophers[lastSelectedGopher]!.isHidden
    }
    if gophersShown != 0 {
      arrOfGophers[lastSelectedGopher]!.isHidden = !arrOfGophers[lastSelectedGopher]!.isHidden
    }
    selectedGopher = randomNumber
    arrOfGophers[selectedGopher]!.isHidden = !arrOfGophers[selectedGopher]!.isHidden
    lastSelectedGopher = selectedGopher
    gophersShown += 1
    
  }
  
  @objc func gopherStuff() {
    
    let randomNumber = Int(arc4random_uniform(9))
    swapVisibleGopher(randomNumber: randomNumber)
    
  }
  
  @objc func startTimer() {
    // Timer countdown
    timerLabel.text = "Timer: \(timerCounter - 1)"
    timerCounter -= 1
    
    
    // Ends countdown and checks score
    if timerCounter == 0 {
      timer.invalidate()
      gopherTimer.invalidate()
      timerLabel.text = "Game Over!"
      checkScore()
      gamesPlayed += 1
    }
  }
  
  @objc func scoreUp() {
    if timerCounter > 0 {
      currentScore += 1
      score.text = "Score: \(currentScore)"
      gopherStuff()
    }
  }
  


}

