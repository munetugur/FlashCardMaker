//
//  PhotoLibraryMoviePickerView.swift
//  FlashCardMaker
//
//  Created by MNT on 2022/10/18.
//

import SwiftUI
import PhotosUI
import Foundation

struct PhotoLibraryMoviePickerView: UIViewControllerRepresentable {

    
    @Environment(\.dismiss) private var dismiss
    @Binding var movieUrl: [URL]?
   
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var configuration = PHPickerConfiguration()
        configuration.filter = .videos
        configuration.preferredAssetRepresentationMode = .current
        configuration.selectionLimit = 30
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, PHPickerViewControllerDelegate {

        var parent: PhotoLibraryMoviePickerView

        //var test: [URL] = [URL]()
        
        
        init(_ parent: PhotoLibraryMoviePickerView) {
            self.parent = parent
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {

            parent.dismiss()
            
            results.forEach {
                
                let provider = $0.itemProvider
                let typeIdentifier = UTType.movie.identifier
                
                if provider.hasItemConformingToTypeIdentifier(typeIdentifier) {
                    provider.loadFileRepresentation(forTypeIdentifier: typeIdentifier) { url, error in
                        if let error = error {
                            print("error: \(error)")
                            return
                        }
                        if let url = url {
                            let fileName = "\(Int(Date().timeIntervalSince1970)).\(url.pathExtension)"
                            let newUrl = URL(fileURLWithPath: Utility.SAVE_URL_MOVIE + fileName)
                            try? FileManager.default.copyItem(at: url, to: newUrl)
                            self.parent.movieUrl?.append(newUrl)
                            print(self.parent.movieUrl)
                        }
                    }
                }
            }
        }
    }
}

//struct PhotoLibraryMoviePickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        PhotoLibraryMoviePickerView(movieUrl: <#Binding<[URL]>#>)
//    }
//}
