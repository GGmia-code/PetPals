//
//  ImagePicker.swift
//  PetPals
//
//  Created by Stef Yaegel on 2/12/24.
//

import SwiftUI
 
import UIKit

// In this file, create a new struct called ImagePicker.

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var selectedImage: UIImage?
    
    @Binding var isImagePickerShowing: Bool
    
    var sourceType: UIImagePickerController.SourceType


    
    // Add method 1
    func makeUIViewController(context: Context) -> some UIViewController {
    
     
        // Inside the makeUIViewController function, we’re going to create an instance of the UIImagePickerController that we can use in our SwiftUI View.
        let imagePicker = UIImagePickerController()

        // Make soure type photo library
        imagePicker.sourceType = self.sourceType

        // Make source type camera
        
        
        // Add below line above return statement - Essentially, this line means that the image our user selected in the photo library is received by coordinator.

        imagePicker.delegate = context.coordinator

        
        // Lastly, the makeUIViewController function expects us to return a UIViewController - so we will return our ImagePicker
        return imagePicker

    }
    
    // Add method 2 and the error will be gone!
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    // Method so code recognizes that .coordinator is the same as our Coordinator class. pass self as argument
    func makeCoordinator() -> Coordinator {
            return Coordinator(self)
        }
    
}

// There is a specific type of object that can receive ImagePicker data and in order to access it we will need to create a new class called Coordinator

//  The UINavigationControllerDelegate is what allows us to navigate from our screen to the camera screen.

class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // Back in the ImagePicker file, we need to get access to selected image. Inside the Coordinator class, add the following property:
    
    var parent: ImagePicker
        
        init(_ picker: ImagePicker) {
            self.parent = picker
        }
    
    
    // This is where we will indicate what our app should do once our user has selected an image.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                    DispatchQueue.main.async {
                        self.parent.selectedImage = image
                    }
                }
        
        // Now, back inside the ImagePicker file, we need to dismiss the image picker when the imagePickerControllerDidCancel method is called.

        parent.isImagePickerShowing = false

    }
    
    // We’ll also add the method imagePickerControllerDidCancel which is where we will tell our app what to do if the user taps “cancel” when the photo library opens.
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        parent.isImagePickerShowing = false
    }
    
}





