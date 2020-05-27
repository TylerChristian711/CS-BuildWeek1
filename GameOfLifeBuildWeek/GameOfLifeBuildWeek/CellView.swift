//
//  CellView.swift
//  GameOfLifeBuildWeek
//
//  Created by Lambda_School_Loaner_218 on 5/26/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

import Foundation
import SpriteKit


protocol CellViewDelegate: AnyObject {
    func cellViewDidToggleAlive(_ cellView: CellView)
}

final class CellView: SKShapeNode {
    weak var delegate: CellViewDelegate?
    
     init(frame: CGRect) {
        super.init()
        self.path = CGPath(ellipseIn: frame, transform: nil)
        isUserInteractionEnabled = true
        lineWidth = 0
        fillColor = GameScene.deadColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        delegate?.cellViewDidToggleAlive(self)
    }
    
}
