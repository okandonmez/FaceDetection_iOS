//
//  FaceDetection.swift
//  FaceRecognition
//
//  Created by Apple on 27.07.2018.
//  Copyright © 2018 MAGNUMIUM. All rights reserved.
//

import Foundation
import CoreImage

class FaceDetector {
    
    func detectFaceFromImage(image : CIImage) -> Bool {
        let accuracy = [CIDetectorAccuracy: CIDetectorAccuracyHigh]
        let faceDetector = CIDetector(ofType: CIDetectorTypeFace, context: nil, options: accuracy)
        let faces = faceDetector?.features(in: image, options: [CIDetectorSmile:true])
        
        if !faces!.isEmpty
        {
            return true
        }
        else {
            return false
        }
        
    }
}
