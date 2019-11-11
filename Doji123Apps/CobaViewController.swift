//
//  CobaViewController.swift
//  Doji123Apps
//
//  Created by Heni Prasetyorini on 11/11/19.
//  Copyright © 2019 heni. All rights reserved.
//

import UIKit

class CobaViewController: UIViewController {

    @IBOutlet var canvas: CanvasUIImageView!
    @IBOutlet var angkaLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        //print(MNISTHandwritingRecognition.classifyImage(image: canvas.processedImage))
        angkaLabel.text = MNISTHandwritingRecognition.classifyImage(image: canvas.processedImage)
    }
    
    @IBAction func hapusTapped(_ sender: Any) {
        canvas.clear()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
