//
//  FirstViewController.swift
//  ProyectoMoviles
//
//  Created by moviles on 06/04/18.
//  Copyright © 2018 moviles. All rights reserved.
//

import UIKit
import CoreData


class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().backgroundColor = UIColor.clear
        UITabBar.appearance().tintColor = UIColor.brown
        //deleteAllRecords()
        //loadProductos()
        //consultar()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    func getContext() -> NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as!
        AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    func deleteAllRecords() {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let context = delegate.persistentContainer.viewContext
        
        let deleteFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Bebidas")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: deleteFetch)
        
        do {
            try context.execute(deleteRequest)
            try context.save()
        } catch {
            print ("There was an error")
        }
    }
    func loadProductos(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Bebidas", in: context)
        let entity2 = NSEntityDescription.entity(forEntityName: "Alimentos", in: context)
        //coca
        let coca = NSManagedObject(entity: entity!, insertInto: context)
        coca.setValue("Coca", forKey: "nombre")
        coca.setValue(Int("1"), forKey: "id")
        coca.setValue(Float("11"), forKey: "precio")
        coca.setValue("600ml", forKey: "cantidad")
        //agua
        let agua = NSManagedObject(entity: entity!, insertInto: context)
        agua.setValue("Agua", forKey: "nombre")
        agua.setValue(Int("2"), forKey: "id")
        agua.setValue(Float("10"), forKey: "precio")
        agua.setValue("600ml", forKey: "cantidad")
        //Americano
        let americano = NSManagedObject(entity: entity!, insertInto: context)
        americano.setValue("Americano", forKey: "nombre")
        americano.setValue(Int("3"), forKey: "id")
        americano.setValue(Float("18"), forKey: "precio")
        americano.setValue("170ml", forKey: "cantidad")
        //capuchino
        let capuchino = NSManagedObject(entity: entity!, insertInto: context)
        capuchino.setValue("Capuchino", forKey: "nombre")
        capuchino.setValue(Int("4"), forKey: "id")
        capuchino.setValue(Float("25"), forKey: "precio")
        capuchino.setValue("170ml", forKey: "cantidad")
        //chocolate
        let chocolate = NSManagedObject(entity: entity!, insertInto: context)
        chocolate.setValue("Chocolate", forKey: "nombre")
        chocolate.setValue(Int("5"), forKey: "id")
        chocolate.setValue(Float("23"), forKey: "precio")
        chocolate.setValue("280ml", forKey: "cantidad")
        //espresso
        let espresso = NSManagedObject(entity: entity!, insertInto: context)
        espresso.setValue("Espresso", forKey: "nombre")
        espresso.setValue(Int("6"), forKey: "id")
        espresso.setValue(Float("20"), forKey: "precio")
        espresso.setValue("100ml", forKey: "cantidad")
        //te
        let te = NSManagedObject(entity: entity!, insertInto: context)
        te.setValue("Te", forKey: "nombre")
        te.setValue(Int("7"), forKey: "id")
        te.setValue(Float("25"), forKey: "precio")
        te.setValue("320ml", forKey: "cantidad")
        //irlandes
        let irlandes = NSManagedObject(entity: entity!, insertInto: context)
        irlandes.setValue("Irlandes", forKey: "nombre")
        irlandes.setValue(Int("8"), forKey: "id")
        irlandes.setValue(Float("30"), forKey: "precio")
        irlandes.setValue("150ml", forKey: "cantidad")
        //moka
        let moka = NSManagedObject(entity: entity!, insertInto: context)
        moka.setValue("Moka", forKey: "nombre")
        moka.setValue(Int("9"), forKey: "id")
        moka.setValue(Float("29"), forKey: "precio")
        moka.setValue("340ml", forKey: "cantidad")
        //frappe
        let frappe = NSManagedObject(entity: entity!, insertInto: context)
        frappe.setValue("Frappe", forKey: "nombre")
        frappe.setValue(Int("10"), forKey: "id")
        frappe.setValue(Float("29"), forKey: "precio")
        frappe.setValue("340ml", forKey: "cantidad")
        
        //Alimentos
        
        //Brownie
        let brownie = NSManagedObject(entity: entity2!, insertInto: context)
        brownie.setValue("Brownie", forKey: "nombre")
        brownie.setValue(Int("11"), forKey: "id")
        brownie.setValue(Float("30"), forKey: "precio")
        //Chocoflan
        let chocoflan = NSManagedObject(entity: entity2!, insertInto: context)
        chocoflan.setValue("Chocoflan", forKey: "nombre")
        chocoflan.setValue(Int("12"), forKey: "id")
        chocoflan.setValue(Float("25"), forKey: "precio")
        
        //Croissant
        let crois = NSManagedObject(entity: entity2!, insertInto: context)
        crois.setValue("Croissant", forKey: "nombre")
        crois.setValue(Int("13"), forKey: "id")
        crois.setValue(Float("29"), forKey: "precio")
        
        //Hamburguesa
        let hamburguesa = NSManagedObject(entity: entity2!, insertInto: context)
        hamburguesa.setValue("Hamburguesa", forKey: "nombre")
        hamburguesa.setValue(Int("14"), forKey: "id")
        hamburguesa.setValue(Float("30"), forKey: "precio")
        
        //Muffin
        let muffin = NSManagedObject(entity: entity2!, insertInto: context)
        muffin.setValue("Muffin", forKey: "nombre")
        muffin.setValue(Int("15"), forKey: "id")
        muffin.setValue(Float("20"), forKey: "precio")
        
        //Panino
        let panino = NSManagedObject(entity: entity2!, insertInto: context)
        panino.setValue("Panino", forKey: "nombre")
        panino.setValue(Int("15"), forKey: "id")
        panino.setValue(Float("20"), forKey: "precio")
        
        //Pay
        let pay = NSManagedObject(entity: entity2!, insertInto: context)
        pay.setValue("Pay", forKey: "nombre")
        pay.setValue(Int("16"), forKey: "id")
        pay.setValue(Float("25"), forKey: "precio")
        
        do {
            try context.save()
        } catch {
            print("error")
        }
        
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
                }
            }
            let results2 = try getContext().fetch(fetchRequest2)
            if results2.count > 0{
                for result in results2 as! [NSManagedObject]{
                    //print(results.count)
                    print(result.value(forKey: "nombre")!)
                    print(result.value(forKey: "id")!)
                    print(result.value(forKey: "precio")!)
                }
            }
            
        }
        catch {
            print("Error en consulta")
        }
    }*/


}

