//
//  ViewController.swift
//  Alert
//
//  Created by Lewis Jones on 24/08/2018.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       // self.presentedViewController(alertController, animated: true, completion: nil)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
        
        
        let alertController = UIAlertController(title: "Do you want to play?", message: "Choose a card to begin the game", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "Cancel", style: .cancel) { alert -> Void in
           print("This is an alert")
        }
        let firstAction = UIAlertAction(title: "First card", style: .default) { alert -> Void in
                self.youLose()
        }
        let secondAction = UIAlertAction(title: "Second card ", style: .default) { alert -> Void in
                self.youLose()
        }
        let thirdAction = UIAlertAction(title: "Third card", style: .default) {alert -> Void in
            self.youWin()
        }
        
        alertController.addAction(firstAction)
        alertController.addAction(secondAction)
        alertController.addAction(thirdAction)
        alertController.addAction(defaultAction)
        
        self.present(alertController, animated: true, completion: nil)
        
        
 }
    func youWin() {
        
        let alertController = UIAlertController(title: "YOU WIN", message: "Want to play again?", preferredStyle: .alert)
        
        let noAction = UIAlertAction(title: "NO", style: .cancel) { alert -> Void in
            print("Don't want to play again")
        }
        let yesAction = UIAlertAction(title: "YES", style: .default) { alert -> Void in
            self.viewDidAppear(true)
        }
        alertController.addAction(noAction)
        alertController.addAction(yesAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func youLose() {
        let alertController = UIAlertController(title: "YOU LOSE", message: "Want to play again?", preferredStyle: .alert)
        
        let noAction = UIAlertAction(title: "NO", style: .cancel) { alert -> Void in
            print("Don't want to play again")
        }
        let yesAction = UIAlertAction(title: "YES", style: .default) { alert -> Void in
            self.viewDidAppear(true)
        }
        alertController.addAction(noAction)
        alertController.addAction(yesAction)
        present(alertController, animated: true, completion: nil)
    }
}
