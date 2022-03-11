//
//  DataViewController.swift
//  B10715039_HW2
//
//  Created by mac12 on 2022/3/10.
//

import UIKit

class DataViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    var showText = "123"
    var imageName = "test"
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "狗狗名稱： " + showText
        imageView.image = UIImage(named: imageName)
        // Do any additional setup after loading the view.
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
