//
//  Model.swift
//  TalkingCharacters
//
//  Created by Casualty on 8/1/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import Foundation
import UIKit

extension Int {
    fileprivate func stringPadded(to count: Int) -> String {
        var string = String(self)
        while string.count < count { string = "0" + string }
        return string
    }
}

// Model.shared

class Model {
    static let shared = Model()
    private init() {}
    
    enum Animation: String, CaseIterable {
        case bureaucrat = "Talking Bureaucrat"
        case frog = "Talking Frog"
        case ranger = "Talking Ranger"
        case vendor = "Talking Vendor"
        case bot = "Talking Woodbot"
    }
    
    private let cellCounts = [Animation.bureaucrat: 26, .frog: 62, .ranger: 86, .vendor: 36, .bot: 69]
    
    var characters: [Animation] {
        return Animation.allCases
    }
    
    func image(for character: Animation) -> UIImage {
        // RETURN THE 000 IMAGE FOR THE GIVEN CHARACTER HERE
        
        let currentCharacter =
        "\(character.rawValue)000"
        
        guard let image = UIImage(named: currentCharacter) else { fatalError("unable to conver image") }
        return image
    }
    
    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        guard let imageCount = cellCounts[character] else { return [] }
        var imageArray: [UIImage] = []
        
        for i in 0 ... imageCount {
            let name = "\(character.rawValue)\(i.stringPadded(to: 3))"
            guard let image = UIImage(named: name) else { fatalError() }
            imageArray.append(image)
            
        }
        return imageArray
    }
}
