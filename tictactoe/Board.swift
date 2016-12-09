//
//  Board.swift
//  tictactoe
//
//  Created by Eric Wong on 12/9/16.
//  Copyright © 2016 Tawpy. All rights reserved.
//

import Foundation
import UIKit

class BoardView: UIView {
    var boardWidth: CGFloat!
    var boardHeight: CGFloat!
    var fieldHeight: CGFloat!
    var fieldWidth: CGFloat!
    var board: UIView!
    var field: UIView!
    var boardColumns: Int!
    var boardRows: Int!
    
    init(boardWidth: CGFloat, boardHeight: CGFloat, boardColumns: Int!, boardRows: Int) {
        self.boardColumns = boardColumns
        self.boardRows = boardRows
        self.boardWidth = boardWidth
        self.boardHeight = boardHeight
        self.fieldHeight = boardHeight / CGFloat(boardRows)
        self.fieldWidth = boardWidth / CGFloat(boardColumns)
        
        var fieldArray = [field]
        let boardFrame = CGRect(x: 0, y: 0, width: boardWidth, height: boardHeight)
        super.init(frame: boardFrame)
        _ = UIView(frame: boardFrame)
        
        for boardColumn in 0..<boardColumns {
            for boardRow in 0..<boardRows {
                let fieldFrame = CGRect(x: CGFloat(boardColumn) * fieldWidth, y: CGFloat(boardRow) * fieldHeight, width: fieldHeight, height: fieldWidth)
                let field = UIView(frame: fieldFrame)
                field.layer.borderWidth = 2
                field.backgroundColor = UIColor.white
                self.addSubview(field)
                fieldArray.append(field)
            }
        }
        print(fieldArray)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
