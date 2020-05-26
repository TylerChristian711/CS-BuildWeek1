//
//  GameScene.swift
//  GameOfLifeBuildWeek
//
//  Created by Lambda_School_Loaner_218 on 5/26/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

import Foundation
import SpriteKit

final class GameScene: SKScene {
    private var cellsView: SKView
    private let cellspace :CGFloat = 1.0
    private let cameraNode = SKCameraNode()
    private let viewModel: GameSceneModel
    static let backColor: UIColor = UIColor.black
    static let aliveColor: UIColor = UIColor(white: 1.0, alpha: 1.0)
    static let deadColor: UIColor = UIColor(white: 0.25, alpha: 1.0)
    var title: String {
        return cellsView.isPaused ? "Continue" : "Pause"
    }
    
    init(cellsView: SKView, viewModel: GameSceneModel) {
        
    }
}
