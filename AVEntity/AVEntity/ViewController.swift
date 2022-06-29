//
//  ViewController.swift
//  AVEntity
//
//  Created by Kamau Baaqi on 8/13/21.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    var arView: ARView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        // Load the "Box" scene from the "Experience" Reality File
        let blobAnchor = try! Interactiveblob.loadBlob()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(blobAnchor)
    }
}
