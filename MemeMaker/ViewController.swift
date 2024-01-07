//
//  ViewController.swift
//  MemeMaker
//
//  Created by Charday Neal on 1/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageSegmentedControl: UISegmentedControl!
    @IBOutlet weak var emojiSegmentedControl: UISegmentedControl!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    //image array
    let imageArray = ["issaInsecure", "mollyInsecure", "issaHappyInsecure", "kellyInsecure"]
    
    //caption array
    let captionArray = ["Are you forreal?", "Imma do it anyway!", "Sounds good to me", "Stop playing with me", "Nevermind", "Let’s play the quiet game", "Don’t piss me off", "Are you sure about that?" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeImageView(imageSegmentedControl.selectedSegmentIndex)
        changeCaption(emojiSegmentedControl.selectedSegmentIndex)
    }

    @IBAction func segmentedControlPressed(_ sender: UISegmentedControl) {
        //store index selection
        
        if sender == imageSegmentedControl {
            changeImageView(sender.selectedSegmentIndex)
        } else {
            changeCaption(sender.selectedSegmentIndex)
        }
    }
    
    func changeImageView(_ index: Int) {
        //depending on which segmented control option is selected, the respective image will be displayed in the imageView

        imageView.image = UIImage(named: imageArray[index])
    }
    
    func changeCaption(_ index: Int) {
        //depending on which segmented control option is selected, the respective text will be displayed in the captionLabel
        captionLabel.text = captionArray[index]
   
    }
    
}

