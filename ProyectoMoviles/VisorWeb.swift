//
//  VisorWeb.swift
//  ProyectoMoviles
//
//  Created by moviles on 13/04/18.
//  Copyright © 2018 moviles. All rights reserved.
//

import UIKit
import CoreData


class VisorWeb: UIViewController {
    var nombreArchivo: String?
    
    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(nombreArchivo!)")
        mostrarPdf()
        habilitarZoom()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func mostrarPdf(){
        if let pdf = Bundle.main.url(forResource: nombreArchivo, withExtension: "pdf", subdirectory: nil,localization: nil){
            let req = NSURLRequest(url: pdf)
            webView.loadRequest(req as URLRequest)
        }
    }

    
    func habilitarZoom(){
        webView.scalesPageToFit = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
