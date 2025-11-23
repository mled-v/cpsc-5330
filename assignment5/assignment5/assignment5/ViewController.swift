import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let adventure = AdventureStory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        let node = adventure.currentNode
        
        storyLabel.text = node.text
        
        if let choice1Text = node.choice1Text {
            choice1Button.setTitle(choice1Text, for: .normal)
            choice1Button.isHidden = false
        } else {
            choice1Button.isHidden = true
        }
        
        if let choice2Text = node.choice2Text {
            choice2Button.setTitle(choice2Text, for: .normal)
            choice2Button.isHidden = false
        } else {
            choice2Button.isHidden = true
        }
    }
    
    @IBAction func choice1Tapped(_ sender: UIButton) {
        adventure.choose(option: 1)
        updateUI()
    }
    
    @IBAction func choice2Tapped(_ sender: UIButton) {
        adventure.choose(option: 2)
        updateUI()
    }
}
