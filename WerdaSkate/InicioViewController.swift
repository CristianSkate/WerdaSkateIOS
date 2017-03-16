//
//  ViewController.swift
//  WerdaSkate
//
//  Created by Cristian Martinez Toledo on 14-03-16.
//  Copyright © 2016 Cristian Martinez Toledo. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tblNoticias: UITableView!
    
    
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

        //tblNoticias.dataSource = self
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
        return 4
        
    }

 
    
    
    

}

