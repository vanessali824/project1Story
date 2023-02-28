//
//  StoryViewController.swift
//  Project1
//
//  Created by Vanessa Li on 2/27/23.
//

import UIKit

class StoryViewController: UIViewController {
    
    //property
    var detail: Detail?
    
    @IBOutlet weak var detailName: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var Textbox: UILabel!
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            if let detail = detail{
                    print(detail.name)
                }
            if let detail = detail {
                // Configure the Captain America images and dynamic labels
                detailName.text = detail.name
                detailName.sizeToFit()
                Image.image = detail.image
                Textbox.text = detail.wordbox
                Textbox.sizeToFit()
            }
    }
        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
