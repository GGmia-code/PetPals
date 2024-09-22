//
//  UploadPhotos.swift
//  PetPals
//
//  Created by Stef Yaegel on 2/12/24.
//

import SwiftUI

struct UploadPhotos: View {
    @State var isImagePickerShowing = false
    @State var selectedImage: UIImage?
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary

    
    var body: some View {
        

        VStack {
            
            // Adding an Image
            // Replace your image with our new variable
            Image(uiImage: selectedImage ?? UIImage(named: "Login")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
          
            // Use HStack to set up UI
            
        
            HStack {
                
                // Button for choosing image from photos
                
                Button("Select a Photo") {
                    self.sourceType = .photoLibrary
                    isImagePickerShowing = true
                }
                .padding()
                
                // Button for taking a photo
                
                Button("Take a Photo") {
                    self.sourceType = .camera
                    isImagePickerShowing = true

                }
                .padding()
                
            }
            
                
            // Put .sheet outside closing curly bracket of VStack
            }
        .sheet(isPresented: $isImagePickerShowing) {
                    ImagePicker(selectedImage: $selectedImage, isImagePickerShowing: $isImagePickerShowing, sourceType: self.sourceType)
                }
        .padding()
    
    }
}
        

struct UploadPhotos_Previews: PreviewProvider {
    static var previews: some View {
        UploadPhotos()
    }
}
