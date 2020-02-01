//
//  Checkbox.swift
//  ParkinSense
//
//  Created by Hamlet Jiang Su on 2019-11-15.
//  Copyright © 2019 PDD Inc. All rights reserved.
//
import UIKit

class CheckBox: UIButton {
    // Images
    let checkedImage = UIImage(named: "checkbox")! as UIImage
    let uncheckedImage = UIImage(named: "uncheckbox")! as UIImage

    // Bool property
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(checkedImage, for: UIControl.State.normal)
            } else {
                self.setImage(uncheckedImage, for: UIControl.State.normal)
            }
        }
    }

    override func awakeFromNib() {
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        self.isChecked = false
    }

    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
}