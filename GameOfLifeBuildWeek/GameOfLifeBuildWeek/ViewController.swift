//
//  ViewController.swift
//  GameOfLifeBuildWeek
//
//  Created by Lambda_School_Loaner_218 on 5/27/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

import SpriteKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cellsView: SKView!
    @IBOutlet weak var pauseButton: UIButton!
    private var gameScene: GameScene?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameScene = GameScene(cellsView: cellsView, viewModel: GameSceneModel(isIPad: UIDevice.current.userInterfaceIdiom == .pad))
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    @IBAction func newGameTapped(_ sender: Any) {
        gameScene?.newGame()
    }
    
    
    @IBAction func pauseTapped(_ sender: Any) {
        gameScene?.togglePaused()
        pauseButton.setTitle(gameScene?.title, for: .normal)
    }
    

    

}
