//
//  MenuViewController.swift
//  WerdaSkate
//
//  Created by Cristian Martinez Toledo on 14-03-16.
//  Copyright © 2016 Cristian Martinez Toledo. All rights reserved.
//

import UIKit
import MMDrawerController

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tblMenu: UITableView!
    
    let menuOps:[String] = ["Noticias","Mapa","Spotline","Contactos","Herramientas","Acerca de", "Cerrar Sesión"]
    let imgMenu:[UIImage] = [UIImage(named: "ic_home")!,UIImage(named: "ic_map")!,UIImage(named: "ic_like")!,UIImage(named: "ic_social")!,UIImage(named: "ic_settings")!,UIImage(named: "ic_about")!,UIImage(named: "ic_cerrar_sesion")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationController?.navigationBar.barTintColor =  UIColor(red: 0.0/255.0, green: 154.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.isTranslucent =  false
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        self.navigationController?.navigationBar.barStyle = .black
        tblMenu.delegate = self
        tblMenu.dataSource =  self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mycell = tableView.dequeueReusableCell(withIdentifier: "celdaMenu", for: indexPath) as! CeldaMenuTableViewCell
        
        mycell.txtTituloOp.text = menuOps[indexPath.row]
        mycell.imgMenu.image =  imgMenu[indexPath.row]
        
        configureCardView(cardView: mycell.cardView)
        
        return mycell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch((indexPath as NSIndexPath).row){
        case 0:
            //Home
            let centerViewController = self.storyboard?.instantiateViewController(withIdentifier: "InicioViewController") as! InicioViewController
            let centerNavController = UINavigationController(rootViewController: centerViewController)
            let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            
            appDelegate.centerContainer!.centerViewController =  centerNavController
            appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
            
            break
            
        case 1:
//            //Mis Encuestas
//            let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
//            // generamos una constante de tipo int leyendo de NSUserDefaults ISLOGGEDIN
//            let isLoggedIn:Int = prefs.integerForKey("ISLOGGEDIN") as Int
//            
//            // si no está logeado, envía a la vista de login, sino muestra el nombre de usuario, leido de la caché
//            if (isLoggedIn != 1) {
//                
//                self.performSegueWithIdentifier("irALogin", sender: self)
//            } else {
//                let centerViewController = self.storyboard?.instantiateViewControllerWithIdentifier("MisEncuestasViewController") as! MisEncuestasViewController
//                let centerNavController = UINavigationController(rootViewController: centerViewController)
//                let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//                
//                appDelegate.centerContainer!.centerViewController =  centerNavController
//                appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
//            }
            
            break
        case 2:
//            //MisEvaluadores
//            let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
//            // generamos una constante de tipo int leyendo de NSUserDefaults ISLOGGEDIN
//            let isLoggedIn:Int = prefs.integerForKey("ISLOGGEDIN") as Int
//            
//            // si no está logeado, envía a la vista de login, sino muestra el nombre de usuario, leido de la caché
//            if (isLoggedIn != 1) {
//                
//                self.performSegueWithIdentifier("irALogin", sender: self)
//            } else {
//                let centerViewController = self.storyboard?.instantiateViewControllerWithIdentifier("MisEvaluadoresViewController") as! MisEvaluadoresViewController
//                let centerNavController = UINavigationController(rootViewController: centerViewController)
//                let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//                appDelegate.centerContainer!.centerViewController =  centerNavController
//                appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
//            }
            break
            
            //break
        case 3:
            
//            //Misión
//            let centerViewController = self.storyboard?.instantiateViewControllerWithIdentifier("MisionViewController") as! MisionViewController
//            let centerNavController = UINavigationController(rootViewController: centerViewController)
//            let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//            
//            appDelegate.centerContainer!.centerViewController =  centerNavController
//            appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
            break
        case 4:
//            //Orgánica
//            let centerViewController = self.storyboard?.instantiateViewControllerWithIdentifier("OrganicaViewController") as! OrganicaViewController
//            let centerNavController = UINavigationController(rootViewController: centerViewController)
//            let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//            
//            appDelegate.centerContainer!.centerViewController =  centerNavController
//            appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
            break
        case 5:
//            //Doctrina
//            let centerViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DoctrinaViewController") as! DoctrinaViewController
//            let centerNavController = UINavigationController(rootViewController: centerViewController)
//            let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//            
//            appDelegate.centerContainer!.centerViewController =  centerNavController
//            appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
            break
        case 6:
//            //Herramientas
//            let centerViewController = self.storyboard?.instantiateViewControllerWithIdentifier("HerramientasViewController") as! HerramientasViewController
//            let centerNavController = UINavigationController(rootViewController: centerViewController)
//            let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//            
//            appDelegate.centerContainer!.centerViewController =  centerNavController
//            appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
            break
        case 7:
//            //Acerca de
//            
//            let alertController = UIAlertController(title: "Acerca de ...", message: "Esta aplicacion fue desarrollada a medida para el Ejército de Chile por CMT y Mprz\ncmartinezt.91@gmail.com\nVersión 1.0", preferredStyle: .Alert)
//            alertController.addAction(UIAlertAction(title: "Aceptar", style: .Default, handler: nil))
//            self.presentViewController(alertController, animated: true, completion: nil)
            break
        case 8:
//            //Cerrar Sesion
//            //Elimina Variable de sesion
//            
//            let alertController = UIAlertController(title: "Confirmación", message: "¿Está seguro de cerrar sesión?", preferredStyle: .Alert)
//            alertController.addAction(UIAlertAction(title: "Si", style: .Default, handler: {(alert: UIAlertAction) in
//                //Accion del boton si
//                let appDomain = NSBundle.mainBundle().bundleIdentifier
//                NSUserDefaults.standardUserDefaults().removePersistentDomainForName(appDomain!)
//                //Hacer el cambio de pantalla
//                //creamos un objeto de tipo NSUserDefaults prefs (caché) que guardará si el usuario está logueado o no
//                let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
//                // generamos una constante de tipo int leyendo de NSUserDefaults ISLOGGEDIN
//                let isLoggedIn:Int = prefs.integerForKey("ISLOGGEDIN") as Int
//                // si no está logeado, envía a la vista de login, sino muestra el nombre de usuario, leido de la caché
//                if (isLoggedIn != 1) {
//                    self.performSegueWithIdentifier("irALogin", sender: self)
//                }
//            }))
//            alertController.addAction(UIAlertAction(title: "No", style: .Default, handler: nil))
//            self.presentViewController((alertController), animated: true, completion: nil)
//            
//            
            
            
            break
            
        default:
            let centerViewController = self.storyboard?.instantiateViewController(withIdentifier: "InicioViewController") as! InicioViewController
            let centerNavController = UINavigationController(rootViewController: centerViewController)
            let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            
            appDelegate.centerContainer!.centerViewController =  centerNavController
            appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
            
            break
            
        }
        
        
        tblMenu.deselectRow(at: indexPath, animated: true)
        
    }
    
    func configureCardView(cardView:UIView){
        
        let contentSize = cardView.sizeThatFits(cardView.bounds.size)
        var frame = cardView.frame
        frame.size.height = contentSize.height
        cardView.frame = frame
        cardView.layer.cornerRadius = 3.0
        cardView.layer.masksToBounds = false
        cardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        cardView.layer.shadowOpacity = 0.8
        cardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.2).cgColor
        
    }


}
