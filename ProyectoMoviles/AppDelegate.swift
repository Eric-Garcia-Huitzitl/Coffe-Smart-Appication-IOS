    //
//  AppDelegate.swift
//  ProyectoMoviles
//
//  Created by moviles on 06/04/18.
//  Copyright © 2018 moviles. All rights reserved.
//

import UIKit
import CoreData


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        deleteAllRecords()
        loadProductos()
        consultar()
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "Productos")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    
    
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
        let deleteFetch2 = NSFetchRequest<NSFetchRequestResult>(entityName: "Alimentos")
        let deleteRequest2 = NSBatchDeleteRequest(fetchRequest: deleteFetch2)
        
        
        do {
            try context.execute(deleteRequest)
            try context.execute(deleteRequest2)

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
        //agua
        let agua = NSManagedObject(entity: entity!, insertInto: context)
        agua.setValue("Agua       ", forKey: "nombre")
        agua.setValue(Int("00"), forKey: "id")
        agua.setValue(Float("10"), forKey: "precio")
        agua.setValue("600ml", forKey: "cantidad")
        agua.setValue(Int("0"), forKey: "comprados")
        
        //Americano
        let americano = NSManagedObject(entity: entity!, insertInto: context)
        americano.setValue("Americano  ", forKey: "nombre")
        americano.setValue(Int("01"), forKey: "id")
        americano.setValue(Float("18"), forKey: "precio")
        americano.setValue("170ml", forKey: "cantidad")
        americano.setValue(Int("0"), forKey: "comprados")
        //coca
        let coca = NSManagedObject(entity: entity!, insertInto: context)
        coca.setValue("Coca       ", forKey: "nombre")
        coca.setValue(Int("02"), forKey: "id")
        coca.setValue(Float("11"), forKey: "precio")
        coca.setValue("600ml", forKey: "cantidad")
        coca.setValue(Int("0"), forKey: "comprados")

        //espresso
        let espresso = NSManagedObject(entity: entity!, insertInto: context)
        espresso.setValue("Espresso   ", forKey: "nombre")
        espresso.setValue(Int("03"), forKey: "id")
        espresso.setValue(Float("20"), forKey: "precio")
        espresso.setValue("100ml", forKey: "cantidad")
        espresso.setValue(Int("0"), forKey: "comprados")


        //moka
        let moka = NSManagedObject(entity: entity!, insertInto: context)
        moka.setValue("Moka       ", forKey: "nombre")
        moka.setValue(Int("04"), forKey: "id")
        moka.setValue(Float("29"), forKey: "precio")
        moka.setValue("340ml", forKey: "cantidad")
        moka.setValue(Int("0"), forKey: "comprados")
        
        //te
        let te = NSManagedObject(entity: entity!, insertInto: context)
        te.setValue("Te         ", forKey: "nombre")
        te.setValue(Int("05"), forKey: "id")
        te.setValue(Float("25"), forKey: "precio")
        te.setValue("320ml", forKey: "cantidad")
        te.setValue(Int("0"), forKey: "comprados")
        
        //irlandes
        let irlandes = NSManagedObject(entity: entity!, insertInto: context)
        irlandes.setValue("Irlandes   ", forKey: "nombre")
        irlandes.setValue(Int("06"), forKey: "id")
        irlandes.setValue(Float("30"), forKey: "precio")
        irlandes.setValue("150ml", forKey: "cantidad")
        irlandes.setValue(Int("0"), forKey: "comprados")
        
        //frappe
        let frappe = NSManagedObject(entity: entity!, insertInto: context)
        frappe.setValue("Frappe     ", forKey: "nombre")
        frappe.setValue(Int("07"), forKey: "id")
        frappe.setValue(Float("29"), forKey: "precio")
        frappe.setValue("340ml", forKey: "cantidad")
        frappe.setValue(Int("0"), forKey: "comprados")
        
        //chocolate
        let chocolate = NSManagedObject(entity: entity!, insertInto: context)
        chocolate.setValue("Chocolate  ", forKey: "nombre")
        chocolate.setValue(Int("08"), forKey: "id")
        chocolate.setValue(Float("23"), forKey: "precio")
        chocolate.setValue("280ml", forKey: "cantidad")
        chocolate.setValue(Int("0"), forKey: "comprados")

    

        //capuchino
        let capuchino = NSManagedObject(entity: entity!, insertInto: context)
        capuchino.setValue("Capuchino  ", forKey: "nombre")
        capuchino.setValue(Int("09"), forKey: "id")
        capuchino.setValue(Float("25"), forKey: "precio")
        capuchino.setValue("170ml", forKey: "cantidad")
        capuchino.setValue(Int("0"), forKey: "comprados")

        
        
        

        

        

        

        
        //Alimentos
        
        //Brownie
        let brownie = NSManagedObject(entity: entity2!, insertInto: context)
        brownie.setValue("Brownie    ", forKey: "nombre")
        brownie.setValue(Int("10"), forKey: "id")
        brownie.setValue(Float("30"), forKey: "precio")
        brownie.setValue(Int("0"), forKey: "comprados")

        //Chocoflan
        let chocoflan = NSManagedObject(entity: entity2!, insertInto: context)
        chocoflan.setValue("Chocoflan  ", forKey: "nombre")
        chocoflan.setValue(Int("11"), forKey: "id")
        chocoflan.setValue(Float("25"), forKey: "precio")
        chocoflan.setValue(Int("0"), forKey: "comprados")

        
        //Croissant
        let crois = NSManagedObject(entity: entity2!, insertInto: context)
        crois.setValue("Croissant  ", forKey: "nombre")
        crois.setValue(Int("12"), forKey: "id")
        crois.setValue(Float("29"), forKey: "precio")
        crois.setValue(Int("0"), forKey: "comprados")
        
        //Muffin
        let muffin = NSManagedObject(entity: entity2!, insertInto: context)
        muffin.setValue("Muffin     ", forKey: "nombre")
        muffin.setValue(Int("13"), forKey: "id")
        muffin.setValue(Float("20"), forKey: "precio")
        muffin.setValue(Int("0"), forKey: "comprados")

        
        //Hamburguesa
        let hamburguesa = NSManagedObject(entity: entity2!, insertInto: context)
        hamburguesa.setValue("Hamburguesa", forKey: "nombre")
        hamburguesa.setValue(Int("14"), forKey: "id")
        hamburguesa.setValue(Float("30"), forKey: "precio")
        hamburguesa.setValue(Int("0"), forKey: "comprados")

        
        

        
        //Panino
        let panino = NSManagedObject(entity: entity2!, insertInto: context)
        panino.setValue("Panino     ", forKey: "nombre")
        panino.setValue(Int("15"), forKey: "id")
        panino.setValue(Float("20"), forKey: "precio")
        panino.setValue(Int("0"), forKey: "comprados")

        
        //Pay
        let pay = NSManagedObject(entity: entity2!, insertInto: context)
        pay.setValue("Pay        ", forKey: "nombre")
        pay.setValue(Int("16"), forKey: "id")
        pay.setValue(Float("25"), forKey: "precio")
        pay.setValue(Int("0"), forKey: "comprados")

        
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


}

