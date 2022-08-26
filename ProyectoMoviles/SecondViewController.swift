//
//  SecondViewController.swift
//  ProyectoMoviles
//
//  Created by moviles on 06/04/18.
//  Copyright © 2018 moviles. All rights reserved.
//

import UIKit
import CoreData


class SecondViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    var arreglo: [String] = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "celda",for: indexPath)
            cell.textLabel!.text = self.arreglo[indexPath.row]
        cell.imageView!.image = UIImage(named:"Iconplus.png")
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pdfSeleccionado = indexPath.row
        self.performSegue(withIdentifier: "visorPDF" , sender: pdfSeleccionado)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let seleccion = sender as! Int
        let webViewObjeto: VisorWeb = segue.destination as! VisorWeb
        webViewObjeto.nombreArchivo = self.arreglo[seleccion]
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        arreglo = ["Irlandes","Croissant","Panino","Pay","Brownie","Chocoflan","Muffin"]
            // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

