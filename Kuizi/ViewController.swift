//
//  ViewController.swift
//  Kuizi
//
//  Created by Rinor Bytyci on 10/23/17.
//  Copyright © 2017 Rinor Bytyci. All rights reserved.
//

import UIKit
import KRProgressHUD

class ViewController: UIViewController {

    @IBOutlet weak var tekstiPyetja: UILabel!
    @IBOutlet weak var pyetjaNumer: UILabel!
    @IBOutlet weak var rezultatiTekst: UILabel!
    @IBOutlet weak var statusiPyetja: UIView!
    var pyetjet = [Pyetja]()
    var numriIPyetjes = 0
    var rezultati = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let pyetjet = Pyetjet()
//        let varguPyetjet = pyetjet.pyetjet
//        let pyetja1 = varguPyetjet[0]
//        let teksti = pyetja1.tekstiIPyetjes
//        tekstiPyetja.text = teksti
        
        pyetjet = Pyetjet().pyetjet
        rifilloLojen()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func kontrolloPergjigjen(_ sender: UIButton) {
        
        if(numriIPyetjes < pyetjet.count){
            
            if sender.tag == 1{
                if pyetjet[numriIPyetjes].pergjigjaESakte == true{
                    rezultati = rezultati + 1
                    KRProgressHUD.showSuccess()
                }
            }else{
                KRProgressHUD.showError()
            }
            if sender.tag == 2{
                if pyetjet[numriIPyetjes].pergjigjaESakte == false{
                    rezultati = rezultati + 1
                    KRProgressHUD.showSuccess()
                }else{
                    KRProgressHUD.showError()
                }
            }
            numriIPyetjes = numriIPyetjes + 1
            
        }
        updateUI()
    }
    
    func updateUI(){
        if (numriIPyetjes < pyetjet.count){
            tekstiPyetja.text = pyetjet[numriIPyetjes].tekstiIPyetjes
            rezultatiTekst.text = "Rezultati: \(rezultati)"
            pyetjaNumer.text = "\(numriIPyetjes + 1) / \(pyetjet.count)"
            statusiPyetja.frame.size.width = (view.frame.width / CGFloat(pyetjet.count)) * CGFloat(numriIPyetjes + 1)
        }else{
            let alertController = UIAlertController(title: "Keni perfunduar Lojen", message: "Urime keni perfunduar lojen me sukses!", preferredStyle: UIAlertControllerStyle.actionSheet)
            let alertAction = UIAlertAction(title: "Rifillo Lojen", style: .default, handler: { (action) in
                self.rifilloLojen()
            })
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    func rifilloLojen(){
        rezultati = 0
        numriIPyetjes = 0
        updateUI()
    }

}

