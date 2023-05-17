//
//  TwoLineButton.swift
//  ReusableButtons
//
//  Created by Nazar Kopeika on 17.05.2023.
//

import UIKit

struct TwoLineButtonViewModel { /* 11 */
    let primaryText: String /* 9 */
    let secondaryText: String /* 10 */
}

final class TwoLineButton: UIButton { /* 1 final */
    private let primaryLabel: UILabel = { /* 12 */
       let label = UILabel() /* 13 */
        label.numberOfLines = 1 /* 14 */
        label.textAlignment = .center /* 15 */
        label.textColor = .white /* 16 */
        label.font = .systemFont(ofSize: 20, weight: .semibold) /* 17 */
        return label /* 18 */
    }()
    
    private let secondaryLabel: UILabel = { /* 19 */
       let label = UILabel() /* 20 */
        label.numberOfLines = 1 /* 21 */
        label.textAlignment = .center /* 22 */
        label.textColor = .white /* 23 */
        label.font = .systemFont(ofSize: 18, weight: .regular) /* 24 */
        return label /* 25 */
    }()
    
    override init(frame: CGRect) { /* 2 */
        super.init(frame: frame) /* 3 */
        addSubview(primaryLabel) /* 26 */
        addSubview(secondaryLabel) /* 27 */
        clipsToBounds = true /* 28 */
        layer.cornerRadius = 8 /* 29 */
        layer.borderWidth = 1 /* 30 */
        layer.borderColor = UIColor.secondarySystemBackground.cgColor /* 31 */
        backgroundColor = .systemGreen /* 36 */
    }
    
    required init?(coder: NSCoder) { /* 4 */
        fatalError() /* 5 */
    }
    
    func configure(with viewModel: TwoLineButtonViewModel) { /* 6 */
        primaryLabel.text = viewModel.primaryText /* 32 */
        secondaryLabel.text = viewModel.secondaryText /* 33 */
    }
    
    override func layoutSubviews() { /* 7 */
        super.layoutSubviews() /* 8 */
        primaryLabel.frame = CGRect(
            x: 5,
            y: 0,
            width: frame.size.width-10,
            height: frame.size.height/2
        ) /* 34 */
        
        secondaryLabel.frame = CGRect(
            x: 5,
            y: frame.size.height/2,
            width: frame.size.width-10,
            height: frame.size.height/2
        ) /* 35 */
    }
}
