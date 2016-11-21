//: Playground - noun: a place where people can play

import UIKit

struct Renderer {
    func moveTo(_ p: CGPoint) {
        print("moveTo(\(p.x), \(p.y))")
    }
    
    func lineTo(_ p: CGPoint) {
        print("lineTo(\(p.x), \(p.y))")
    }
    
    func arcAt(_ center: CGPoint, radius: CGFloat,
               startAngle: CGFloat, endAngle: CGFloat) {
        print("arcAt(\(center), radius: \(radius),"
            + " startAngle: \(startAngle), endAngle: \(endAngle))")
    }
}

protocol Drawable {
    func draw(renderer: Renderer)
}

// 多角形
struct Polygon : Drawable {
    var corners: [CGPoint] = []
    
    func draw(renderer: Renderer) {
        renderer.moveTo(corners.last!)
        for p in corners {
            renderer.lineTo(p)
        }
    }
}

// 円
struct Circle : Drawable {
    var center: CGPoint
    var radius: CGFloat

    func draw(renderer: Renderer) {
        renderer.arcAt(center, radius: radius,
                       startAngle: 0.0, endAngle: 0.0 /*twoPi*/)
    }
}

struct Diagram : Drawable {
    var elements: [Drawable] = []
    
    func draw(renderer: Renderer) {
        for f in elements {
            f.draw(renderer: renderer)
        } }
}



var circle = Circle(center:
    CGPoint(x: 187.5, y: 333.5),
                    radius: 93.75)

var triangle = Polygon(corners: [
    CGPoint(x: 187.5, y: 427.25),
    CGPoint(x: 268.69, y: 286.625),
    CGPoint(x: 106.31, y: 286.625)])

var diagram = Diagram(elements: [circle, triangle])

diagram.draw(renderer: Renderer())
