//
//  BebidasViewController.swift
//  ProyectoMoviles
//
//  Created by moviles on 23/04/18.
//  Copyright © 2018 moviles. All rights reserved.
//

import UIKit
import CoreData


class BebidasViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var c_agua: UITextView!
    
    
    @IBOutlet weak var c_americano: UITextView!
    
    @IBOutlet weak var c_coca: UITextView!
    
    
    @IBOutlet weak var c_espre: UITextView!
    
    
    @IBOutlet weak var c_moka: UITextView!
    
    
    @IBOutlet weak var c_te: UITextView!
    
    
    @IBOutlet weak var c_irlandes: UITextView!
    
    @IBOutlet weak var c_frappe: UITextView!
    
    
    @IBOutlet weak var c_choco: UITextView!
    
    @IBOutlet weak var c_capuc: UITextView!
    
    
    @IBAction func addAgua(_ sender: Any) {
        
        let empId = "00"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let predicate = NSPredicate(format: "id = '\(empId)'")
        fetchRequest.predicate = predicate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do
        {
            let results = try context.fetch(fetchRequest)
            if results.count > 0{
                let objectUpdate = results[0] as! NSManagedObject
                //objectUpdate.setValue("newName", forKey: "name")
                // objectUpdate.setValue("newDepartment", forKey: "department")
                //objectUpdate.
                //let data :AnyObject = "100"
                //let score = Int(data as! String)!
                let comprados = objectUpdate.value(forKey: "comprados")!
                var comprados1 = Int(comprados as! Int)
                var contador = 0
                comprados1 = comprados1 + 1
                
                objectUpdate.setValue(comprados1, forKey: "comprados")
                contador = Int(objectUpdate.value(forKey: "comprados")! as! Int)
                c_agua.text = "\(contador)"
                do{
                    try context.save()
                }
                catch
                {
                    print(error)
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
        consultar()
    }
    
    @IBAction func addAmeric(_ sender: Any) {
        let empId = "01"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let predicate = NSPredicate(format: "id = '\(empId)'")
        fetchRequest.predicate = predicate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do
        {
            let results = try context.fetch(fetchRequest)
            if results.count > 0{
                let objectUpdate = results[0] as! NSManagedObject
                //objectUpdate.setValue("newName", forKey: "name")
                // objectUpdate.setValue("newDepartment", forKey: "department")
                //objectUpdate.
                //let data :AnyObject = "100"
                //let score = Int(data as! String)!
                let comprados = objectUpdate.value(forKey: "comprados")!
                var comprados1 = Int(comprados as! Int)
                var contador = 0
                comprados1 = comprados1 + 1
                
                objectUpdate.setValue(comprados1, forKey: "comprados")
                contador = Int(objectUpdate.value(forKey: "comprados")! as! Int)
                c_americano.text = "\(contador)"
                do{
                    try context.save()
                }
                catch
                {
                    print(error)
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
        consultar()
    }
    
    @IBAction func addCoca(_ sender: Any) {
        let empId = "02"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let predicate = NSPredicate(format: "id = '\(empId)'")
        fetchRequest.predicate = predicate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do
        {
            let results = try context.fetch(fetchRequest)
            if results.count > 0{
                let objectUpdate = results[0] as! NSManagedObject
                //objectUpdate.setValue("newName", forKey: "name")
                // objectUpdate.setValue("newDepartment", forKey: "department")
                //objectUpdate.
                //let data :AnyObject = "100"
                //let score = Int(data as! String)!
                let comprados = objectUpdate.value(forKey: "comprados")!
                var comprados1 = Int(comprados as! Int)
                comprados1 = comprados1 + 1
                var contador = 0

                objectUpdate.setValue(comprados1, forKey: "comprados")
                contador = Int(objectUpdate.value(forKey: "comprados")! as! Int)
                c_coca.text = "\(contador)"
                do{
                    try context.save()
                }
                catch
                {
                    print(error)
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
        consultar()
    }
    
    @IBAction func addEspre(_ sender: Any) {
        
        let empId = "03"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let predicate = NSPredicate(format: "id = '\(empId)'")
        fetchRequest.predicate = predicate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do
        {
            let results = try context.fetch(fetchRequest)
            if results.count > 0{
                let objectUpdate = results[0] as! NSManagedObject
                //objectUpdate.setValue("newName", forKey: "name")
                // objectUpdate.setValue("newDepartment", forKey: "department")
                //objectUpdate.
                //let data :AnyObject = "100"
                //let score = Int(data as! String)!
                let comprados = objectUpdate.value(forKey: "comprados")!
                var comprados1 = Int(comprados as! Int)
                comprados1 = comprados1 + 1
                
                objectUpdate.setValue(comprados1, forKey: "comprados")
                var contador = 0
                contador = Int(objectUpdate.value(forKey: "comprados")! as! Int)
                c_espre.text = "\(contador)"
                do{
                    try context.save()
                }
                catch
                {
                    print(error)
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
        consultar()
    }
    
    @IBAction func addMoka(_ sender: Any) {
        
        let empId = "04"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let predicate = NSPredicate(format: "id = '\(empId)'")
        fetchRequest.predicate = predicate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do
        {
            let results = try context.fetch(fetchRequest)
            if results.count > 0{
                let objectUpdate = results[0] as! NSManagedObject
                //objectUpdate.setValue("newName", forKey: "name")
                // objectUpdate.setValue("newDepartment", forKey: "department")
                //objectUpdate.
                //let data :AnyObject = "100"
                //let score = Int(data as! String)!
                let comprados = objectUpdate.value(forKey: "comprados")!
                var comprados1 = Int(comprados as! Int)
                comprados1 = comprados1 + 1
                
                objectUpdate.setValue(comprados1, forKey: "comprados")
                var contador = 0
                contador = Int(objectUpdate.value(forKey: "comprados")! as! Int)
                c_moka.text = "\(contador)"
                do{
                    try context.save()
                }
                catch
                {
                    print(error)
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
        consultar()
    }
    
    @IBAction func addTe(_ sender: Any) {
        let empId = "05"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let predicate = NSPredicate(format: "id = '\(empId)'")
        fetchRequest.predicate = predicate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do
        {
            let results = try context.fetch(fetchRequest)
            if results.count > 0{
                let objectUpdate = results[0] as! NSManagedObject
                //objectUpdate.setValue("newName", forKey: "name")
                // objectUpdate.setValue("newDepartment", forKey: "department")
                //objectUpdate.
                //let data :AnyObject = "100"
                //let score = Int(data as! String)!
                let comprados = objectUpdate.value(forKey: "comprados")!
                var comprados1 = Int(comprados as! Int)
                comprados1 = comprados1 + 1
                
                objectUpdate.setValue(comprados1, forKey: "comprados")
                var contador = 0
                contador = Int(objectUpdate.value(forKey: "comprados")! as! Int)
                c_te.text = "\(contador)"
                do{
                    try context.save()
                }
                catch
                {
                    print(error)
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
        consultar()
        
    }
    
    
    @IBAction func addIrlandes(_ sender: Any) {
        let empId = "06"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let predicate = NSPredicate(format: "id = '\(empId)'")
        fetchRequest.predicate = predicate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do
        {
            let results = try context.fetch(fetchRequest)
            if results.count > 0{
                let objectUpdate = results[0] as! NSManagedObject
                //objectUpdate.setValue("newName", forKey: "name")
                // objectUpdate.setValue("newDepartment", forKey: "department")
                //objectUpdate.
                //let data :AnyObject = "100"
                //let score = Int(data as! String)!
                let comprados = objectUpdate.value(forKey: "comprados")!
                var comprados1 = Int(comprados as! Int)
                comprados1 = comprados1 + 1
                
                objectUpdate.setValue(comprados1, forKey: "comprados")
                var contador = 0
                contador = Int(objectUpdate.value(forKey: "comprados")! as! Int)
                c_irlandes.text = "\(contador)"
                do{
                    try context.save()
                }
                catch
                {
                    print(error)
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
        consultar()
    }
    
    @IBAction func addFrapp(_ sender: Any) {
        let empId = "07"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let predicate = NSPredicate(format: "id = '\(empId)'")
        fetchRequest.predicate = predicate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do
        {
            let results = try context.fetch(fetchRequest)
            if results.count > 0{
                let objectUpdate = results[0] as! NSManagedObject
                //objectUpdate.setValue("newName", forKey: "name")
                // objectUpdate.setValue("newDepartment", forKey: "department")
                //objectUpdate.
                //let data :AnyObject = "100"
                //let score = Int(data as! String)!
                let comprados = objectUpdate.value(forKey: "comprados")!
                var comprados1 = Int(comprados as! Int)
                comprados1 = comprados1 + 1
                
                objectUpdate.setValue(comprados1, forKey: "comprados")
                var contador = 0
                contador = Int(objectUpdate.value(forKey: "comprados")! as! Int)
                c_frappe.text = "\(contador)"
                do{
                    try context.save()
                }
                catch
                {
                    print(error)
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
        consultar()
        
    }
    
    @IBAction func addChoco(_ sender: Any) {
        
        let empId = "08"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let predicate = NSPredicate(format: "id = '\(empId)'")
        fetchRequest.predicate = predicate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do
        {
            let results = try context.fetch(fetchRequest)
            if results.count > 0{
                let objectUpdate = results[0] as! NSManagedObject
                //objectUpdate.setValue("newName", forKey: "name")
                // objectUpdate.setValue("newDepartment", forKey: "department")
                //objectUpdate.
                //let data :AnyObject = "100"
                //let score = Int(data as! String)!
                let comprados = objectUpdate.value(forKey: "comprados")!
                var comprados1 = Int(comprados as! Int)
                comprados1 = comprados1 + 1
                
                objectUpdate.setValue(comprados1, forKey: "comprados")
                var contador = 0
                contador = Int(objectUpdate.value(forKey: "comprados")! as! Int)
                c_choco.text = "\(contador)"
                do{
                    try context.save()
                }
                catch
                {
                    print(error)
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
        consultar()
    }
    
    @IBAction func addCapuchi(_ sender: Any) {
        let empId = "09"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let predicate = NSPredicate(format: "id = '\(empId)'")
        fetchRequest.predicate = predicate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do
        {
            let results = try context.fetch(fetchRequest)
            if results.count > 0{
                let objectUpdate = results[0] as! NSManagedObject
                //objectUpdate.setValue("newName", forKey: "name")
                // objectUpdate.setValue("newDepartment", forKey: "department")
                //objectUpdate.
                //let data :AnyObject = "100"
                //let score = Int(data as! String)!
                let comprados = objectUpdate.value(forKey: "comprados")!
                var comprados1 = Int(comprados as! Int)
                comprados1 = comprados1 + 1
                
                objectUpdate.setValue(comprados1, forKey: "comprados")
                var contador = 0
                contador = Int(objectUpdate.value(forKey: "comprados")! as! Int)
                c_capuc.text = "\(contador)"
                do{
                    try context.save()
                }
                catch
                {
                    print(error)
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
        consultar()
        
    }
    
    func getContext() -> NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as!
        AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    
    func consultar(){
        _ = getContext()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Bebidas")
        let fetchRequest2 = NSFetchRequest<NSFetchRequestResult>(entityName:"Alimentos")
        
        do{
            let results = try getContext().fetch(fetchRequest)
            if results.count > 0{
                for result in results as! [NSManagedObject]{
                    //print(results.count)
                    print(result.value(forKey: "nombre")!)
                    print(result.value(forKey: "id")!)
                    print(result.value(forKey: "cantidad")!)
                    print(result.value(forKey: "precio")!)
                    print(result.value(forKey: "comprados")!)
                    
                }
            }
            let results2 = try getContext().fetch(fetchRequest2)
            if results2.count > 0{
                for result in results2 as! [NSManagedObject]{
                    //print(results.count)
                    print(result.value(forKey: "nombre")!)
                    print(result.value(forKey: "id")!)
                    print(result.value(forKey: "precio")!)
                    print(result.value(forKey: "comprados")!)
                    
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
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
