//
//  ViewController.swift
//  FaceRecognition
//
//  Created by Sebastian Hette on 01.11.2017.
//  Copyright © 2017 MAGNUMIUM. All rights reserved.
//

import UIKit
import CoreImage

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myTextView: UITextView!
    
    @IBAction func `import`(_ sender: Any)
    {
        //Create image picker
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        //display the image picker
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    //Pick photo
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            myImageView.image = image
        }
        
      //  detect()
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  detect()
        
        let faceDetector = FaceDetector()
        let isFaceDetected = faceDetector.detectFaceFromImage(image: CIImage(image: myImageView.image!)!)
        print(isFaceDetected)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

