//
//  ViewController.swift
//  assignment4
//
//  Created by Matthew Ledford on 11/16/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moodLabel: UILabel!
    @IBOutlet weak var moodSlider: UISlider!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var savedLabel: UILabel!
    
    var currentEmoji: String = "😀"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        moodSlider.minimumValue = 0
        moodSlider.maximumValue = 100
        moodSlider.value = 75
        
        updateMoodLabel(for: moodSlider.value)
        
        savedLabel.text = ""
        datePicker.datePickerMode = .date
        
        datePicker.contentHorizontalAlignment = .center
    }
    
    func updateMoodLabel(for value: Float) {
        let intValue = Int(value)
        
        let moodText: String
        let emoji: String
        
        switch intValue {
        case 0...20:
            moodText = "Very Sad"
            emoji = "😢"
        case 21...40:
            moodText = "Sad"
            emoji = "😟"
        case 41...60:
            moodText = "Neutral"
            emoji = "😐"
        case 61...80:
            moodText = "Happy"
            emoji = "🙂"
        default:
            moodText = "Very Happy"
            emoji = "😄"
        }
        
        currentEmoji = emoji
        moodLabel.text = "Feeling: \(moodText) \(emoji)"
    }

    @IBAction func moodSliderChanged(_ sender: UISlider) {
        updateMoodLabel(for: sender.value)
    }
    
    @IBAction func saveMoodTapped(_ sender: UIButton) {
        let selectedDate = datePicker.date
            
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            
            let dateString = formatter.string(from: selectedDate)
            
            savedLabel.text = "On \(dateString), you felt \(currentEmoji)"
        }
}

