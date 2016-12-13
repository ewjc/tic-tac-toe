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
    var fieldHeight: CGFloat!
    var fieldWidth: CGFloat!
    var locationX: Int!
    var locationY: Int!
    var boardColumn: Int!
    var boardRow: Int!
    var fieldsArray = [[],[],[]]
    var delegate: FieldTapRecognizerDelegate!

    
    init(boardColumn: Int, boardRow: Int, fieldWidth: CGFloat, fieldHeight: CGFloat, locationX: Int, locationY: Int) {
        self.boardColumn = boardColumn
        self.boardRow = boardRow
        self.fieldWidth = fieldWidth
        self.fieldHeight = fieldHeight
        self.locationX = locationX
        self.locationY = locationY
        
        let fieldFrame = CGRect(x: CGFloat(boardColumn) * fieldWidth, y: CGFloat(boardRow) * fieldHeight, width: fieldHeight, height: fieldWidth)
        super.init(frame: fieldFrame)
        let field = UIView(frame: fieldFrame)
        field.layer.borderWidth = 2
        field.backgroundColor = UIColor.white
        self.addSubview(field)
        fieldsArray[boardRow].append(field)
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Field.handleTap(_:)))
        gestureRecognizer.delegate = self
        field.addGestureRecognizer(gestureRecognizer)
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func handleTap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: self)
    }
    
}
