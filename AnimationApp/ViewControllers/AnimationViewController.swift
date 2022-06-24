//
//  ViewController.swift
//  AnimationApp
//
//  Created by Elena Pavlova on 21.06.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationDescriptionLabel: UILabel!
    
    private var currentAnimation = Animation.getRandomAnimation()
    
    @IBAction func runAnimationPressed(_ sender: UIButton) {
        animationView.animation = currentAnimation.namePreset
        animationView.curve = currentAnimation.nameCurve
        animationView.duration = CGFloat(currentAnimation.duration)
        animationView.damping = CGFloat(currentAnimation.duration)
        animationView.velocity = CGFloat(currentAnimation.velocity)
        animationView.delay = CGFloat(currentAnimation.delay)
        
        animationView.animate()
        
        animationDescriptionLabel.text = currentAnimation.animationDescription
        
        currentAnimation = Animation.getRandomAnimation()
        sender.setTitle("Run \(currentAnimation.namePreset)", for: .normal)
    }
}

