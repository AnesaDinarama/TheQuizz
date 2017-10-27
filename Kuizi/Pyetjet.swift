//
//  Pyetjet.swift
//  Kuizi
//
//  Created by Rinor Bytyci on 10/23/17.
//  Copyright © 2017 Rinor Bytyci. All rights reserved.
//

import Foundation

class Pyetjet{
    
    var pyetjet = [Pyetja]()
    
    init(){
        
        var pyetja1 = Pyetja(teksti: "Lumi eshte me i madh se perrocka?", pergjigja: true)
        pyetjet.append(pyetja1)
        
        pyetjet.append(Pyetja(teksti: "Akropolisi gjendet ne Rome?", pergjigja: false))
        pyetjet.append(Pyetja(teksti: "Stambolli eshte kryeqyteti i Turqise? ", pergjigja: false))
        pyetjet.append(Pyetja(teksti: "Area e siperfaqes se dy mushkerive te njeriut eshte afersisht 70 km katrore?", pergjigja: true))
        pyetjet.append(Pyetja(teksti: "Tokyo eshte qyteti urban me i populluar ne bote?", pergjigja: true))
        pyetjet.append(Pyetja(teksti: "Lumi Sena kalon neper Bruksel dhe Paris? ", pergjigja: false))
        pyetjet.append(Pyetja(teksti: "Google fillimisht eshte quajtur WeSearch?", pergjigja: false))
        pyetjet.append(Pyetja(teksti: "Asnje cope letre nuk mund te thyhet me shume se 7 here?", pergjigja: false))
        pyetjet.append(Pyetja(teksti: "UN i njef 197 shtete ne bote? ", pergjigja: true))
        pyetjet.append(Pyetja(teksti: "Me 1970 Popullsia e Botes ka qene sa gjysma qe eshte sot?", pergjigja: true))
        
    }
    
    
}
