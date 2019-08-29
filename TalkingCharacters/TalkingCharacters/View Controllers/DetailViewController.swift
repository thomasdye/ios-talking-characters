//
//  DetailViewController.swift
//  TalkingCharacters
//
//  Created by Casualty on 8/1/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var cellCharacter = "test"

    @IBOutlet weak var talkingCharacterLabel: UILabel!
    
    @IBOutlet weak var detailViewImage: UIImageView!
    
    var character: Model.Animation?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let character = character else { return }
        
        
        let cells = Model.shared.cells(for: character)
        
        talkingCharacterLabel.text = character.rawValue
        
        detailViewImage.animationImages = cells
        detailViewImage.animationRepeatCount = 0
        detailViewImage.animationDuration = 1
        detailViewImage.startAnimating()
        
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
