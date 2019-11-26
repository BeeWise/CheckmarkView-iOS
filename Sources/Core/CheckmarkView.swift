//
//  CheckmarkView.swift
//  CheckmarkView
//
//  Created by Bee Wise Development on 01/04/19.
//  Copyright © 2019 BeeWise. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
open class CheckmarkView: UIView {
    public enum checkmarkType: Int {
        case variant1 = 0
        case variant2 = 1
        case variant3 = 2
    }
    
    @IBInspectable public var checkmarkColor: UIColor = UIColor.clear {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable public var checkmarkWidth: CGFloat = 3 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable public var checkmarkType: Int = CheckmarkView.checkmarkType.variant1.rawValue {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable public var checkedFillColor: UIColor = UIColor.clear {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable public var uncheckedFillColor: UIColor = UIColor.clear {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 5 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable public var borderColor: UIColor = UIColor.clear {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable public var isChecked: Bool = false {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    private var outerInsets: UIEdgeInsets {
        get {
            return UIEdgeInsets(top: self.borderWidth, left: self.borderWidth, bottom: self.borderWidth, right: self.borderWidth)
        }
    }
    
    override open func draw(_ rect: CGRect) {
        self.drawCircle(rect)
        self.drawBorder(rect)
        if self.isChecked {
            self.drawCheckmark(rect)
        }
    }
    
    func drawCircle(_ rect: CGRect) {
        let ovalRect = rect.inset(by: self.outerInsets)
        let ovalPath = UIBezierPath(ovalIn: ovalRect)
        let color = self.isChecked ? self.checkedFillColor : self.uncheckedFillColor
        color.setFill()
        ovalPath.fill()
    }
    
    func drawBorder(_ rect: CGRect) {
        let ovalRect = rect.inset(by: self.outerInsets)
        let ovalPath = UIBezierPath(ovalIn: ovalRect)
        self.borderColor.setStroke()
        ovalPath.lineWidth = self.borderWidth
        ovalPath.stroke()
    }
    
    func drawCheckmark(_ rect: CGRect) {
        let checkmarkPoints = self.checkmarkPoints(rect)
        
        let bezierPath = UIBezierPath()
        bezierPath.move(to: checkmarkPoints.pointA)
        bezierPath.addLine(to: checkmarkPoints.pointB)
        bezierPath.addLine(to: checkmarkPoints.pointC)
        self.checkmarkColor.setStroke()
        bezierPath.lineWidth = self.checkmarkWidth
        bezierPath.lineCapStyle = .round
        bezierPath.lineJoinStyle = .round
        bezierPath.stroke()
    }
    
    func checkmarkPoints(_ rect: CGRect) -> (pointA: CGPoint, pointB: CGPoint, pointC: CGPoint) {
        let pathRect = rect.inset(by: self.outerInsets)
        
        let radius: CGFloat = min(pathRect.width, pathRect.height) / 2
        let angle: CGFloat = 120 * .pi / 180
        let origin: CGPoint = CGPoint(x: pathRect.midX, y: pathRect.midY)
        
        switch self.checkmarkType {
            case CheckmarkView.checkmarkType.variant1.rawValue: return self.checkmarkPointsForVariant1(origin: origin, radius: radius, angle: angle)
            case CheckmarkView.checkmarkType.variant2.rawValue: return self.checkmarkPointsForVariant2(origin: origin, radius: radius, angle: angle)
            case CheckmarkView.checkmarkType.variant3.rawValue: return self.checkmarkPointsForVariant3(origin: origin, radius: radius, angle: angle)
            default: return self.checkmarkPointsForVariant1(origin: origin, radius: radius, angle: angle)
        }
    }
    
    func checkmarkPointsForVariant1(origin: CGPoint, radius: CGFloat, angle: CGFloat) -> (pointA: CGPoint, pointB: CGPoint, pointC: CGPoint) {
        return (CGPoint(x: origin.x + radius * cos(angle), y: origin.y),
                CGPoint(x: origin.x - radius / 6, y: origin.y + radius / 3),
                CGPoint(x: origin.x + radius / 2, y: origin.y - radius / 2 + radius / 6))
    }
    
    func checkmarkPointsForVariant2(origin: CGPoint, radius: CGFloat, angle: CGFloat) -> (pointA: CGPoint, pointB: CGPoint, pointC: CGPoint) {
        return (CGPoint(x: origin.x + radius * cos(angle), y: origin.y),
                CGPoint(x: origin.x - radius / 6, y: origin.y + radius / 3),
                CGPoint(x: origin.x + radius / 2, y: origin.y - radius / 2))
    }
    
    func checkmarkPointsForVariant3(origin: CGPoint, radius: CGFloat, angle: CGFloat) -> (pointA: CGPoint, pointB: CGPoint, pointC: CGPoint) {
        return (CGPoint(x: origin.x + radius * cos(angle), y: origin.y),
                CGPoint(x: origin.x - radius / 6, y: origin.y + radius / 2),
                CGPoint(x: origin.x + radius / 2, y: origin.y - radius / 2))
    }
}
