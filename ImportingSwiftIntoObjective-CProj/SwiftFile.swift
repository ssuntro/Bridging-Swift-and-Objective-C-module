//
//  SwiftFile.swift
//  ImportingSwiftIntoObjective-CProj
//
//  Created by Siroratt Suntronsuk on 23/6/2564 BE.
//

import Foundation
import Lottie
import UIKit

@objc class Human: NSObject {
    @objc var age: Int = 0
}


@objc class Animator: NSObject {
    @objc func exe(with view: UIView)  {
        let animationView = AnimationView()
        let path = Bundle.main.path(forResource: "dino",
                                        ofType: "json") ?? ""
        animationView.animation = Animation.filepath(path)
        animationView.frame = view.bounds
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 0.5
        view.addSubview(animationView)
        view.bringSubviewToFront(animationView)
        animationView.play()
    }
}
