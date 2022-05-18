//
//  ViewController.swift
//  alertProject
//
//  Created by Sina Taherkhani on 6/30/1400 AP.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let alert = UIAlertController(title: "is test", message: "select onece", preferredStyle: .alert)        
        alert.addTextField{ (textField) in
            print("text = \(String(describing: textField.text!))")
        }
        let ok = UIAlertAction(title: "باوشه", style: .default){ (action) in
            print("good text=\(alert.textFields!.first!.text!.trimmingCharacters(in: .whitespacesAndNewlines))")
        }
        let cancell = UIAlertAction(title: "ناوشه", style: .destructive){ (action) in
            print("nood")
        }
        alert.addAction(ok)
        alert.addAction(cancell)
        self.present(alert, animated: true)
    }


}
