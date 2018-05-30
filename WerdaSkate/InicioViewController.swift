//
//  ViewController.swift
//  WerdaSkate
//
//  Created by Cristian Martinez Toledo on 14-03-16.
//  Copyright © 2016 Cristian Martinez Toledo. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblNoticias: UITableView!
    
    // Noticias de prueba
    
    let noticias:[String] = ["Gran Venta nocturna","Campeonato a beneficio ","Descuentos por el día del skate","lalalalalalalala"]
    let imgMenu:[UIImage] = [UIImage(named: "ic_home")!,UIImage(named: "ic_map")!,UIImage(named: "ic_like")!,UIImage(named: "ic_social")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title = "Noticias"
        self.navigationController?.navigationBar.barTintColor =  UIColor(red: 0.0/255.0, green: 154.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.isTranslucent =  false
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        self.navigationController?.navigationBar.barStyle = .black
        
        var image = UIImage(named: "Menu")
        
        image = image?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: UIBarButtonItemStyle.plain, target: self, action: #selector(InicioViewController.btnMenu(_:)))

        tblNoticias.dataSource = self
        tblNoticias.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func btnMenu(_ sender: AnyObject) {
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.centerContainer!.toggle(.left, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noticias.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mycell = tableView.dequeueReusableCell(withIdentifier: "celdaNoticia", for: indexPath) as! CeldaNoticiasTableViewCell
        
        mycell.txtNoticia.text = noticias[indexPath.row]
        mycell.imgNoticia.image =  imgMenu[indexPath.row]
        
        configureCardView(cardView: mycell.cardView)
        
        return mycell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch((indexPath as NSIndexPath).row){
        case 0:
            //Home
            
            
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
            
        default:
            
            
            break
            
        }
        
        
        tblNoticias.deselectRow(at: indexPath, animated: true)
        
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

