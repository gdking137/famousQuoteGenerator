//
//  ViewController.swift
//  famousQouteGenerator
//
//  Created by Songhee Yim on 12/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    
    let quotes = [
        Quote(contents: "famous quote", name:"idk who"),
        Quote(contents: "dafuq is this", name:"my someone"),
        Quote(contents: "niche is dead", name:"God"),
        Quote(contents: "freedom of speech", name:"..."),
        Quote(contents: "uf", name:"gg"),
        Quote(contents: "never give up", name:"deft")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.NameLabel.text = quote.name
        
        
    }
    
}

