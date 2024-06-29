//
//  ViewController.swift
//  Did you know
//
//  Created by 楊芮瑊 on 2024/6/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var textFunFact: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func showAnotherFunFact() {
        changeContent()
    }
    
    
    func changeContent() {
        view.backgroundColor = randomColor()
        textFunFact.text = randomText()
        
    }
    
    func randomText() -> String? {
        let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."
        ]
        return text.randomElement()
    }
    
    func randomColor() -> UIColor? {
        let color1 = UIColor(red: 71/255, green: 147/255, blue: 175/255, alpha:1.0)
        let color2 = UIColor(red: 255.0, green: 196/255, blue: 112/255, alpha: 1.0)
        let color3 = UIColor(red: 221/255, green: 87/255, blue: 70/255, alpha: 1.0)
        let color4 = UIColor(red: 139/255, green: 50/255, blue: 44/255, alpha: 1.0)
        let color5 = UIColor(red: 54/255, green: 94/255, blue: 50/255, alpha: 1.0)
        let color6 = UIColor(red: 129/255, green: 162/255, blue: 99/255, alpha: 1.0)
        let color7 = UIColor(red: 253/255, green: 155/255, blue: 99/255, alpha: 1.0)
        let allColor = [color1, color2, color3, color4, color5, color6, color7]
        return allColor.randomElement()
    }


}

