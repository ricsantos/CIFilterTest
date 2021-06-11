//
//  ViewController.swift
//  FilterTest
//
//  Created by Ric Santos on 28/5/21.
//

import UIKit

class ViewController: UIViewController {
    let imageViewNoFilter = UIImageView()
    let imageViewWithFilter = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // To see the filter working, use the small image - bmw-small.jpg
        // To see the filter not working, use the large image - bmw.jpg
        
        let image = UIImage(named: "bmw.jpg")!
        
        // No filter on the left
        self.imageViewNoFilter.frame = CGRect(x: 50, y: 0, width: 379, height: 474)
        self.imageViewNoFilter.image = image
        self.view.addSubview(self.imageViewNoFilter)
        
        // Filtered image on the right
        self.imageViewWithFilter.frame = CGRect(x: 50 + 379, y: 00, width: 379, height: 474)
        self.view.addSubview(self.imageViewWithFilter)
        
        let context = CIContext(options: nil)
        if let currentFilter = CIFilter(name: "CISRGBToneCurveToLinear") {
            let beginImage = CIImage(image: image)
            currentFilter.setValue(beginImage, forKey: kCIInputImageKey)

            if let output = currentFilter.outputImage {
                if let cgimg = context.createCGImage(output, from: output.extent) {
                    let processedImage = UIImage(cgImage: cgimg)
                    print("Done. Filtered image size is \(processedImage.size)")
                    self.imageViewWithFilter.image = processedImage
                }
            }
        }
    }
}
