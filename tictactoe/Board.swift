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
    var boardColumns: Int!
    var boardRows: Int!
    
    
    init(boardWidth: CGFloat, boardHeight: CGFloat, boardColumns: Int!, boardRows: Int) {
        self.boardColumns = boardColumns
        self.boardRows = boardRows
        self.boardWidth = boardWidth
        self.boardHeight = boardHeight
        let fieldWidth = boardWidth / CGFloat(boardColumns)
        let fieldHeight = boardHeight / CGFloat(boardRows)
        
        let boardFrame = CGRect(x: 0, y: 0, width: boardWidth, height: boardHeight)
        super.init(frame: boardFrame)
    
        var fieldsArray: [[Field]] = []
        for boardColumn in 0..<boardColumns {
            var tempArray: [Field] = []
            for boardRow in 0..<boardRows {
                let field = Field(boardColumn: boardColumn, boardRow: boardRow, fieldWidth: fieldWidth, fieldHeight: fieldHeight)
                self.addSubview(field)
                tempArray.append(field)
            }
            fieldsArray.append(tempArray)
        }
                print(fieldsArray)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
