//
//  N5HandwritingRecognition.swift
//  HiKanji
//
//  Created by Ricki Bin Yamin on 07/10/19.
//  Copyright © 2019 erbe. All rights reserved.
//

import UIKit
import CoreML
import Vision

class MNISTHandwritingRecognition {
    static func classifyImage(image: UIImage?) -> String? {
        let model = AngkaImageClassifier_1()
        guard let prediction = try? model.prediction(image: RecognitionHandler.imageToPixelBuffer(image: image)!) else {
            return nil
        }
        
        return prediction.classLabel
    }
}
