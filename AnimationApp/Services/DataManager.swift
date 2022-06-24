//
//  DataManager.swift
//  AnimationApp
//
//  Created by Elena Pavlova on 22.06.2022.
//

import SpringAnimation

class DataManager {
    
    static let shared = DataManager()
    
    let presetNames = AnimationPreset.allCases
    let curveNames = AnimationCurve.allCases
    
    private init() { }
}
