//
//  ViewController.swift
//  MergeImage
//
//  Created by Sishpal on 24/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var originalImageView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        originalImageView.image = combineTwoImagesIntoOne(firstImage: UIImage(named: "1")!, secondImage: UIImage(named: "2")!)
    }
    
    func combineTwoImagesIntoOne(firstImage : UIImage, secondImage : UIImage) -> UIImage {
        let size = CGSize(width: firstImage.size.width, height: firstImage.size.height)
        UIGraphicsBeginImageContext(size)
        let firstArea = CGRect(x: 0, y: 0, width: size.width/2, height: size.height)
        let secondArea = CGRect(x: size.width/2, y: 0, width: size.width/2, height: size.height)
        firstImage.draw(in: firstArea)
        secondImage.draw(in: secondArea, blendMode: .normal, alpha: 1)
        var FinalImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return FinalImage!
    }


}

