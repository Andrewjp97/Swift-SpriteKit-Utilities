//
//  Swift SpriteKit Utilities.swift
//
//
//  Created by Andrew Paterson on 6/21/14.
//
//  Licensed Under the MIT License
//

import Foundation
import SpriteKit

extension Double {
    var CGFloatValue: CGFloat {
    get {
        return CGFloat(self)
    }
    }
}
extension Int {
    var CGFloatValue: CGFloat {
    get {
        return CGFloat(self)
    }
    }
}
extension CGFloat {
    var DoubleValue: Double {
    get {
        return Double(self)
    }
    }
}
extension SKScene {
    func childNamedContainsPoint(name: String, point: CGPoint) -> Bool {
        if let node = self.childNodeWithName(name) {
            if node.containsPoint(point){
                return true
            } else {
                return false
            }
        }
    }
    func removeChildNodesWithName(name: String) {
        let block: (SKNode!, CMutablePointer<ObjCBool>) -> Void = ({(node, stop) in node.removeFromParent()})
        self.enumerateChildNodesWithName(name, usingBlock: block)
    }
}