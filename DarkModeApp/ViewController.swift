//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Hüseyin BAKAR on 18.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
     
       
    }

    //anlık değişikliği görebilmek için viewWillAppear altında kullandık
    
    override func viewWillAppear(_ animated: Bool) {
        
        // eğer dark mod seçilmişse buton rengini değiştirdik..
         let userInterfaceStyle = traitCollection.userInterfaceStyle
         if userInterfaceStyle == .dark
         {
             changeButton.tintColor = .white
         }
         else
         {
             changeButton.tintColor = .blue
         }
    }

}

