//
//  ViewController.swift
//  ReusableButtons
//
//  Created by Nazar Kopeika on 17.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let twoLineButton = TwoLineButton(frame: CGRect(x: 0, y: 0, width: 300, height: 55)) /* 36 */
        view.addSubview(twoLineButton) /* 37 */
        twoLineButton.center = view.center /* 38 */
        twoLineButton.configure(with: TwoLineButtonViewModel(
            primaryText: "Start Free Trial",
            secondaryText: "3 days free, then 1.99$/month")
        ) /* 39 */
    }
    
    
}

