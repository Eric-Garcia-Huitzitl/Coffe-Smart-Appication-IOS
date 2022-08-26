//
//  ThreethViewController.swift
//  ProyectoMoviles
//
//  Created by moviles on 13/04/18.
//  Copyright © 2018 moviles. All rights reserved.
//

import UIKit
import CoreData


class ThreethViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var arreglo: [String] = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda2",for: indexPath)
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
        arreglo = ["Agua","Americano","Coca","Moka","Frappe","Irlandes","Chocolate","Te Helado","Capuchino","Espresso"]        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
