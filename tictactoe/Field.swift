//
//  Field.swift
//  tictactoe
//
//  Created by Eric Wong on 12/13/16.
//  Copyright © 2016 Tawpy. All rights reserved.
//

import Foundation
import UIKit

protocol FieldTapRecognizerDelegate {
    func tapRecognized()
}

class Field: UIView, UIGestureRecognizerDelegate {
    var boardColumn: Int!
    var boardRow: Int!
    var delegate: FieldTapRecognizerDelegate!
    
    
    init(boardColumn: Int, boardRow: Int, fieldWidth: CGFloat, fieldHeight: CGFloat) {
        self.boardColumn = boardColumn
        self.boardRow = boardRow
        
        let fieldFrame = CGRect(x: CGFloat(boardColumn) * fieldWidth, y: CGFloat(boardRow) * fieldHeight, width: fieldHeight, height: fieldWidth)
        
        super.init(frame: fieldFrame)
        
        self.layer.borderWidth = 2
        self.backgroundColor = UIColor.white
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Field.handleTap(_:)))
        gestureRecognizer.delegate = self
        self.addGestureRecognizer(gestureRecognizer)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func handleTap(_ sender: UITapGestureRecognizer) {
        _ = sender.location(in: self)
        print(boardColumn, boardRow)
    }
    
}
