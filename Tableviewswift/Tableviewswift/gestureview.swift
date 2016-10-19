//
//  gestureview.swift
//  Tableviewswift
//
//  Created by Perfection Developer on 19/10/16.
//  Copyright © 2016 Perfection Developer. All rights reserved.
//

import Foundation
import UIKit

class gestureview: UIViewController , UIGestureRecognizerDelegate
{
    
    @IBOutlet weak var imagepinch: UIImageView!
    override func viewDidLoad()
    {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(gestureview.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.imagepinch.addGestureRecognizer(swipeRight)
        imagepinch.isUserInteractionEnabled = true
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(gestureview.respondToSwipeGesture(_:)))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        self.imagepinch.addGestureRecognizer(swipeDown)
        imagepinch.isUserInteractionEnabled = true
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(gestureview.respondToSwipeGesture(_:)))
        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        self.imagepinch.addGestureRecognizer(swipeUp)
        imagepinch.isUserInteractionEnabled = true
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(gestureview.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.imagepinch.addGestureRecognizer(swipeLeft)
        imagepinch.isUserInteractionEnabled = true
        
        let rotateGesture = UIRotationGestureRecognizer(target: self, action: #selector(gestureview.handleRotate(_:)))
        imagepinch.addGestureRecognizer(rotateGesture)
        rotateGesture.delegate = self
        
        let pinchZoom = UIPinchGestureRecognizer(target: self, action: #selector(gestureview.zoom(_:)))
        imagepinch.addGestureRecognizer(pinchZoom)
        pinchZoom.delegate = self
        
        let edgePan = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(gestureview.screenEdgeSwiped(_:)))
        edgePan.edges = .left
        view.addGestureRecognizer(edgePan)
        
        
   
    }
    
    func screenEdgeSwiped(_ recognizer: UIScreenEdgePanGestureRecognizer) {
        
        let alert = UIAlertController(title: "Detect", message: "Edge Swiped left", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)

            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            let resultViewController = storyBoard.instantiateViewController(withIdentifier: "mainview") 
            
            self.present(resultViewController, animated:true, completion:nil)
    }
    func zoom(_ recognizer:UIPinchGestureRecognizer) {
        
        if let view = recognizer.view {
            view.transform = view.transform.scaledBy(x: recognizer.scale, y: recognizer.scale)
            recognizer.scale = 1
        }
    }
        
    
    func handleRotate(_ recognizer : UIRotationGestureRecognizer) {
        recognizer.view!.transform = recognizer.view!.transform.rotated(by: recognizer.rotation)
        recognizer.rotation = 0
    }
    
       
    func respondToSwipeGesture(_ sender: UISwipeGestureRecognizer)
    {
            switch sender.direction {
            case UISwipeGestureRecognizerDirection.right:
                print("Swiped right")
                
                let alert = UIAlertController(title: "Detect", message: "You Swiped Right", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            case UISwipeGestureRecognizerDirection.down:
                print("Swiped down")
                
                let alert = UIAlertController(title: "Detect", message: "You Swiped Down", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)

            case UISwipeGestureRecognizerDirection.left:
                print("Swiped left")
                
                let alert = UIAlertController(title: "Detect", message: "You Swiped Left", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)

            case UISwipeGestureRecognizerDirection.up:
                print("Swiped up")
                
                let alert = UIAlertController(title: "Detect", message: "You Swiped Up", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)

            default:
                break
            }
    }
}
