//
//  MarkDestiny.swift
//  Destiny
//
//  Created by Guilherme  Iropi on 21/08/2020.
//  Copyright © 2020 Guilherme Iropi. All rights reserved.
//

import UIKit

class MarkDestiny: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    @objc func MarkButtonPressed(button: UIButton) {
        print("Button pressed")
    }
    
    private func setupButtons() {
        
        let button = UIButton()
        button.backgroundColor = UIColor.blue
        
        button.addTarget(self, action: #selector(MarkDestiny.MarkButtonPressed(button:)), for: .touchUpInside)
        
        addArrangedSubview(button)
    }
    
}
