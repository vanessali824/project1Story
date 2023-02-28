//
//  ViewController.swift
//  Project1
//
//  Created by Vanessa Li on 2/26/23.
//

import UIKit

class ViewController: UIViewController{
    //Model
    
    //Create individual pages using Detail model
    let story1 = Detail(
        name:"Captain America's story", image: UIImage(named: "pic2")!, wordbox: "Captain America is a World War II hero. He became Captain America after he received the super-soldier serum. He went to sleep for nearly 70 years after crashing into the Artic. He is part of the Avengers.")
    let age = Detail(name: "Captain America's Birthday!", image: UIImage(named: "pic3")!, wordbox: "He was born July 4, 1918!")
    let shield = Detail(name: "Captain America's Shield", image: UIImage(named: "Cap-Shield")!, wordbox: "Captain America's shield is used as his main weapon, as well as for defense. It is disc shaped with a star in the middle, and blue, red and white concentric circles around it. It was made partially with Vibranium and is virtually indestructable.")
    
    //Array to store pages
    var details: [Detail] = [];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //store models
        details = [story1, age, shield];
        print(details[0])
    }

    
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue1", sender: tappedView)
        }
       
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue1",
            let tappedView = sender as? UIView,
            let StoryViewController = segue.destination as? StoryViewController {

            if tappedView.tag == 0 {
                StoryViewController.detail = details[0]
            } else if tappedView.tag == 1 {
                StoryViewController.detail = details[1]
            } else if tappedView.tag == 2 {
                StoryViewController.detail = details[2]
            } else {
                print("Nothing was tapped! Please check your selection.")
            }
        }
    }
    
    
}

