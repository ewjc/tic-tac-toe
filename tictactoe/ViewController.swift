//
//  ViewController.swift
//  tictactoe
//
//  Created by Eric Wong on 12/9/16.
//  Copyright © 2016 Tawpy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let board = BoardView(boardWidth: 300, boardHeight: 300, boardColumns: 3, boardRows: 3)
        let screenView = view
        screenView?.addSubview(board)
        board.center = screenView!.center
    }


}

