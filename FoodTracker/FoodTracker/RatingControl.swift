//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Jeffrey on 2016-11-04.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), for: .touchDown)
        addSubview(button)
    }
    
    override public var intrinsicContentSize: CGSize {
        get {
            return CGSize(width: 240, height: 44)
        }
    }
    
    // MARK: Button Action
    func ratingButtonTapped(_ button: UIButton) {
        print("Button pressed 👍")
    }
}
