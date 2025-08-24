
import UIKit

class EmitterView: UIView {
    override class var layerClass: AnyClass {
        return CAEmitterLayer.self
    }
    
    override var layer: CAEmitterLayer {
        super.layer as! CAEmitterLayer
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.emitterPosition = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        layer.emitterSize = bounds.size
    }
}
