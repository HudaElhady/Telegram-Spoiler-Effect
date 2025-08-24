
import SwiftUI

struct SpoilerView: UIViewRepresentable {
    var isOn = false
    func makeUIView(context: Context) -> EmitterView {
        let emitterView = EmitterView()
        
        let emitterCell = CAEmitterCell()
        emitterCell.contents = UIImage(named: "dots-black")?.cgImage
        emitterCell.color = UIColor.black.cgColor
        emitterCell.contentsScale = 1.8
        emitterCell.emissionRange = .pi * 2
        emitterCell.lifetime = 1
        emitterCell.scale = 0.5
        emitterCell.velocityRange = 10
        emitterCell.alphaRange = 0.3
        emitterCell.birthRate = 300
        
        emitterView.layer.emitterShape = .rectangle
        emitterView.layer.emitterCells = [emitterCell]
        
        return emitterView
        
    }
    
    func updateUIView(_ uiView: EmitterView, context: Context) {
        if isOn {
            uiView.layer.beginTime = CACurrentMediaTime()
        }
        
        uiView.layer.birthRate = isOn ? 1 : 0
    }
}
