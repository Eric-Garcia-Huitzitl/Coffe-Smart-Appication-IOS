//
//  AlimentosViewController.swift
//  ProyectoMoviles
//
//  Created by moviles on 23/04/18.
//  Copyright © 2018 moviles. All rights reserved.
//

import UIKit
import CoreData


class AlimentosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var c_Brownie: UITextView!
    
    
    @IBOutlet weak var c_choco: UITextView!
    
    
    @IBOutlet weak var c_croiss: UITextView!
    
    
    @IBOutlet weak var c_muffin: UITextView!
    
    
    
    @IBOutlet weak var c_hamburguesa: UITextView!
    
    
    @IBOutlet weak var c_panino: UITextView!
    
    @IBOutlet weak var c_chesse: UITextView!
    
    @IBAction func addBrow(_ sender: Any) {
        
        let empId = "10"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Alimentos")
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
                c_Brownie.text = "\(contador)"
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
    
    
    @IBAction func addChocof(_ sender: Any) {
        
        let empId = "11"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Alimentos")
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
    
    @IBAction func addCroiss(_ sender: Any) {
        let empId = "12"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Alimentos")
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
                c_croiss.text = "\(contador)"
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
    
    @IBAction func addMuffin(_ sender: Any) {
        
        let empId = "13"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Alimentos")
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
                c_muffin.text = "\(contador)"
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
    
    @IBAction func addHamburg(_ sender: Any) {
        let empId = "14"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Alimentos")
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
                c_hamburguesa.text = "\(contador)"
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
    
    @IBAction func addPanino(_ sender: Any) {
        
        let empId = "15"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Alimentos")
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
                c_panino.text = "\(contador)"
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
    
    @IBAction func addChesse(_ sender: Any) {
        
        let empId = "16"
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Alimentos")
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
                c_chesse.text = "\(contador)"
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
