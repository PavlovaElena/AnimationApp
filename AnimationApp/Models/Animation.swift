//
//  Animation.swift
//  AnimationApp
//
//  Created by Elena Pavlova on 21.06.2022.
//

struct Animation {
    let namePreset: String
    let nameCurve: String
    let duration: Float
    let damping: Float
    let velocity: Float
    let delay: Float
    
    var animationDescription: String {
                """
                animation parameters:
                preset: \(namePreset)
                curve: \(nameCurve)
                duration: \(String(format: "%.02f", duration))
                damping: \(String(format: "%.02f", damping))
                velocity: \(String(format: "%.02f", velocity))
                """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(namePreset: DataManager.shared.presetNames.randomElement()?.rawValue ?? "pop",
                  nameCurve: DataManager.shared.curveNames.randomElement()?.rawValue ?? "easeIn",
                  duration: Float.random(in: 1...1.5),
                  damping: Float.random(in: 0.5...1.5),
                  velocity: Float.random(in: 0.5...1.5),
                  delay: 0.5
        )
    }
}

