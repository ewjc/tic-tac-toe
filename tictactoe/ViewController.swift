//
//  ViewController.swift
//  tictactoe
//
//  Created by Eric Wong on 12/9/16.
//  Copyright © 2016 Tawpy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let board = BoardView(boardWidth: 300, boardHeight: 300, boardColumns: 5, boardRows: 6)
        let screenView = view
        screenView?.addSubview(board)
        board.center = screenView!.center
        
    }

    


}

