import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var currentStoryIndex: Int = 0
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender == choice1Button {
            currentStoryIndex += 1
        } else if sender == choice2Button {
            currentStoryIndex += 2
        }
        updateUi()
    }
    
    func updateUi() {
        let currentStory = stories[currentStoryIndex]
        storyLabel.text = currentStory.title
        choice1Button.setTitle(currentStory.choice1, for: .normal)
        choice2Button.setTitle(currentStory.choice2, for: .normal)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentStoryIndex = 0
        updateUi()
    }


}

