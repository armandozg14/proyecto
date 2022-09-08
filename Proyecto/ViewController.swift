//
//  ViewController.swift
//  Proyecto
//
//  Created by Alumno on 9/6/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblSelect: UILabel!
    
    @IBOutlet weak var imgSaturno: UIImageView!
    
    @IBOutlet weak var imgEarth: UIImageView!
    @IBOutlet weak var imgPlanetOn: UIImageView!
    @IBOutlet weak var imgJupiter: UIImageView!

    var secuenciaEarth : [UIImage] = []
    var secuenciaSaturno : [UIImage] = []
    var secuenciaJupiter : [UIImage] = []
    var secuenciaMars : [UIImage] = []
    var secuenciaPlanetOn : [UIImage] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 1...5{
            let imagen = UIImage(named: "TIERRA\(i)")
            secuenciaEarth.append(imagen!)
        }
        imgEarth.animationImages = secuenciaEarth
        imgEarth.animationDuration = 1.0
        imgEarth.startAnimating()
        for i in 1...5{
            let imagen = UIImage(named: "SATURNO\(i)")
            secuenciaSaturno.append(imagen!)
        }
        imgSaturno.animationImages = secuenciaSaturno
        imgSaturno.animationDuration = 1.0
        imgSaturno.startAnimating()
        for i in 1...5{
            let imagen = UIImage(named: "JUPITER\(i)")
            secuenciaJupiter.append(imagen!)
        }
        imgJupiter.animationImages = secuenciaJupiter
        imgJupiter.animationDuration = 1.0
        imgJupiter.startAnimating()
        
    }
        

    @IBAction func doTapEarth(_ sender: Any) {
        lblSelect.text = "Earth"
        secuenciaPlanetOn = []
        for i in 1...5{
            let imagen = UIImage(named: "TIERRA\(i)")
            secuenciaPlanetOn.append(imagen!)
        }
        
        imgPlanetOn.animationImages = secuenciaPlanetOn
        imgPlanetOn.animationDuration = 1.0
        imgPlanetOn.startAnimating()
    }
    @IBAction func doTapMars(_ sender: Any) {
        lblSelect.text = "Mars"
    }
    @IBAction func doTapJupiter(_ sender: Any) {
        lblSelect.text = "Jupiter"
        secuenciaPlanetOn = []
        for i in 1...5{
            let imagen = UIImage(named: "JUPITER\(i)")
            secuenciaPlanetOn.append(imagen!)
        }
        
        imgPlanetOn.animationImages = secuenciaPlanetOn
        imgPlanetOn.animationDuration = 1.0
        imgPlanetOn.startAnimating()
    }
    @IBAction func doTapSaturn(_ sender: Any) {
        lblSelect.text = "Saturn"
        secuenciaPlanetOn = []
        for i in 1...5{
            let imagen = UIImage(named: "SATURNO\(i)")
            secuenciaPlanetOn.append(imagen!)
        }
        
        imgPlanetOn.animationImages = secuenciaPlanetOn
        imgPlanetOn.animationDuration = 1.0
        imgPlanetOn.startAnimating()
    }
    
}

