//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Hüseyin BAKAR on 18.12.2021.
//


/*
 ÖNEMLİ**
 
 info.plist'e User Interface Style yazıp -> karşısına Dark yazdık..
 böyle yaparsak -> sadece Dark Mode'da çalışır ***
 
 info.plist UserINterface Style yoksa..
 
 #Çözüm:
 info plist. openas -> source code
 
 // mutlaka dark mode da çalışır değişmez
 
 <key>UIUserInterfaceStyle</key>
 <string>Dark</string>
 
 2.yol
 info.plist de source code değilde normal olarak property list olarak aç yani
 sonra;
 Appearance -> Dark yapabilirsin
 
 
 dark mode'da app kötü görünüyorsa , sadece light mode da kullanılmasını isteyebiliriz
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        // #v3 dark mod'a alsak bile bizim uygulamamız light mode'a uyumludur. Dedik..
        overrideUserInterfaceStyle = .light
    }

    //anlık değişikliği görebilmek için viewWillAppear altında kullandık
    
    override func viewWillAppear(_ animated: Bool) {
        
        // #v2 eğer dark mod seçilmişse buton rengini değiştirdik..
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
    
    
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        // #v3 dark mod' a alınca değişikliği algılaması için birebir uyguladık..
        
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

