//
//  ViewControllerComprar.swift
//  ProyectoMoviles
//
//  Created by moviles on 23/04/18.
//  Copyright © 2018 moviles. All rights reserved.
//

import UIKit
import CoreData


class ViewControllerComprar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func comprar(_ sender: Any) {
        let dialogMessage = UIAlertController(title: "Confirmación", message: "Estas seguro de comprar?", preferredStyle: .alert)
        var bandera = 0
        _ = getContext()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let fetchRequest2 = NSFetchRequest<NSFetchRequestResult>(entityName:"Alimentos")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        
        //let context = appDelegate.persistentContainer.viewContext

        
        
        
        // Create OK button with action handler
        
        let ok = UIAlertAction(title: "Yes", style: .default, handler: { (action) -> Void in
            print("Comprado")
            bandera = 1
            if bandera == 1 {
                print("entre a borrar")
                
                do{
                    //  ticket = "Pedido       Cantidad    Precio\n"
                    //let results = try getContext().fetch(fetchRequest)
                    let results = try context.fetch(fetchRequest)
                    
                    if results.count > 0{
                        // print("Pedido       Cantidad    Precio")
                        //Ticket.text = ("      Pedido       Cantidad    Precio")
                        for result in results as! [NSManagedObject]{
                            
                            if Int(result.value(forKey: "comprados")! as! Int) > 0{
                                result.setValue(Int("0"), forKey: "comprados")
                                //       comprados = Int(result.value(forKey: "comprados")! as! Int)
                                //     precio = Int(result.value(forKey: "precio")! as! Int)
                                //total = total + (Int(result.value(forKey: "comprados")! as! Int)) * Int(result.value(forKey: "precio")! as! Int)
                                //   preciot = comprados * precio
                                // total = total + preciot
                                // print( (result.value(forKey: "nombre")! as! String) + "......" + "\(comprados)" + "...... $" + "\(preciot)"+".00")
                                // ticket += (result.value(forKey: "nombre")! as! String) + "......" + "\(comprados)" + "...... $" + "\(preciot)"+".00\n"
                                do{
                                    try context.save()
                                }
                                catch
                                {
                                    print(error)
                                }
                                
                            }
                            
                            
                            
                            
                        }
                    }
                    
                    // let results2 = try getContext().fetch(fetchRequest2)
                    let results2 = try context.fetch(fetchRequest2)
                    
                    if results2.count > 0{
                        for result in results2 as! [NSManagedObject]{
                            if Int(result.value(forKey: "comprados")! as! Int) > 0{
                                result.setValue(Int("0"), forKey: "comprados")
                                do{
                                    try context.save()
                                }
                                catch
                                {
                                    print(error)
                                }
                                // comprados = Int(result.value(forKey: "comprados")! as! Int)
                                // precio = Int(result.value(forKey: "precio")! as! Int)
                                //preciot = comprados * precio
                                //total = total + preciot
                                
                                //total = total + comprados * precio
                                
                                //total = total + (Int(result.value(forKey: "comprados")! as! Int)) * Int(result.value(forKey: "precio")! as! Int)
                                //print( (result.value(forKey: "nombre")! as! String) + "......" + "\(comprados)" + "...... $" + "\(precio)"+".00")
                                //ticket += (result.value(forKey: "nombre")! as! String) + "......" + "\(comprados)" + "...... $" + "\(preciot)"+".00\n"
                                
                                
                            }
                            
                            
                            
                            
                        }
                    }
                    
                    
                    
                    
                    
                    
                    
                }
                catch {
                    print("Error en consulta")
                }
                
                self.Ticket.text = ""
            }
       
        })
      
        
        
        
        // Create Cancel button with action handlder
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
            print("Cancel button tapped")
        }
        
        //Add OK and Cancel button to dialog message
        dialogMessage.addAction(ok)
        dialogMessage.addAction(cancel)
        self.present(dialogMessage, animated: true, completion: nil)
    }
    
    
    
    @IBAction func Paypal(_ sender: Any) {
        UIApplication.shared.openURL(NSURL(string: "https://www.paypal.com/signin?country.x=ES&locale.x=es_ES")! as URL)
    }
    
    
    @IBOutlet weak var Ticket: UITextView!
    
    
    @IBAction func Generar(_ sender: Any) {
        _ = getContext()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let fetchRequest2 = NSFetchRequest<NSFetchRequestResult>(entityName:"Alimentos")
        var total = 0
        var comprados = 0
        var precio = 0
        var preciot = 0
        var ticket: String
        
        do{
            ticket = "Pedido       Cantidad    Precio\n"
            let results = try getContext().fetch(fetchRequest)
            if results.count > 0{
                print("Pedido       Cantidad    Precio")
                //Ticket.text = ("      Pedido       Cantidad    Precio")
                for result in results as! [NSManagedObject]{
                    
                    if Int(result.value(forKey: "comprados")! as! Int) > 0{
                        comprados = Int(result.value(forKey: "comprados")! as! Int)
                        precio = Int(result.value(forKey: "precio")! as! Int)
                        //total = total + (Int(result.value(forKey: "comprados")! as! Int)) * Int(result.value(forKey: "precio")! as! Int)
                        preciot = comprados * precio
                        total = total + preciot
                        print( (result.value(forKey: "nombre")! as! String) + "......" + "\(comprados)" + "...... $" + "\(preciot)"+".00")
                        ticket += (result.value(forKey: "nombre")! as! String) + "......" + "\(comprados)" + "...... $" + "\(preciot)"+".00\n"
                        
                        
                    }
                    
                    
                    
                    
                }
            }
            
            let results2 = try getContext().fetch(fetchRequest2)
            if results2.count > 0{
                for result in results2 as! [NSManagedObject]{
                    if Int(result.value(forKey: "comprados")! as! Int) > 0{
                        comprados = Int(result.value(forKey: "comprados")! as! Int)
                        precio = Int(result.value(forKey: "precio")! as! Int)
                        preciot = comprados * precio
                        total = total + preciot

                        //total = total + comprados * precio
                        
                        //total = total + (Int(result.value(forKey: "comprados")! as! Int)) * Int(result.value(forKey: "precio")! as! Int)
                        print( (result.value(forKey: "nombre")! as! String) + "......" + "\(comprados)" + "...... $" + "\(precio)"+".00")
                        ticket += (result.value(forKey: "nombre")! as! String) + "......" + "\(comprados)" + "...... $" + "\(preciot)"+".00\n"

                        
                    }
                    
                    
                    
                    
                }
            }
            
            
            
            
            
            
            
        }
        catch {
            print("Error en consulta")
        }
        Ticket.textAlignment = NSTextAlignment.justified
        ticket += ("Total: $" + "\(total)" + ".00\n")
        Ticket.text = (ticket)
        print (total)
    }
    
    
    
    func getContext() -> NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as!
        AppDelegate
        return appDelegate.persistentContainer.viewContext
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
