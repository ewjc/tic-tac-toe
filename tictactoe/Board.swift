//
//  Board.swift
//  tictactoe
//
//  Created by Eric Wong on 12/9/16.
//  Copyright © 2016 Tawpy. All rights reserved.
//

import Foundation
import UIKit

class BoardView: UIView, UIGestureRecognizerDelegate {
    var boardWidth: CGFloat!
    var boardHeight: CGFloat!
    var fieldHeight: CGFloat!
    var fieldWidth: CGFloat!
    var board: UIView!
    var field: UILabel!
    var boardColumns: Int!
    var boardRows: Int!
    var fieldsArray = [[],[],[]]
    
    init(boardWidth: CGFloat, boardHeight: CGFloat, boardColumns: Int!, boardRows: Int) {
        self.boardColumns = boardColumns
        self.boardRows = boardRows
        self.boardWidth = boardWidth
        self.boardHeight = boardHeight
        self.fieldHeight = boardHeight / CGFloat(boardRows)
        self.fieldWidth = boardWidth / CGFloat(boardColumns)

        
        let boardFrame = CGRect(x: 0, y: 0, width: boardWidth, height: boardHeight)
        super.init(frame: boardFrame)
        _ = UIView(frame: boardFrame)
    
        for boardColumn in 0..<boardColumns {
            for boardRow in 0..<boardRows {
                
                // field class should be init here, pass in x, y vals

            }
        }
                print(fieldsArray)
    }
    // this should go in the field class

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
