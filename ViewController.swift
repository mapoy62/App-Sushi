//
//  ViewController.swift
//  Mac
//
//  Created by user201842 on 11/1/21.
//

import UIKit
import SwiftUI


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var countryList = ["Número de Mesa:", "3", "Nombres de clientes:", "Luis", "Jesús",  "Yuyu",  "Fernanda",  "Eloy","Ivan", "Sandra","Número de Mesa:", "1", "Nombres de clientes:", "Mario",  "Ricardo",  "Ana"]
    
    @IBOutlet var tableView: UITableView!
    
    
    @IBOutlet var BotonPlatillos: UIButton!
    
    
        
    
    
    @IBSegueAction func showMenu(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: menuView())
    }
    //@IBSegueAction func showMenu(_ coder: NSCoder) -> UIViewController? {
        //return UIHostingController(coder: coder, rootView: menuView())
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()
             // Do any additional setup after loading the view.
        
        
       
    }
    
    
    
    
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return countryList.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{


    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    let country = countryList[indexPath.row]


      cell.textLabel?.text = country
        cell.textLabel?.textColor = UIColor.white

     return cell
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath ) {
        
        cell.backgroundColor = colorForIndex(index: indexPath.row)
        
    }
    
    func colorForIndex(index: Int) -> UIColor {
        
        let itemCount = countryList.count
        
        let color = (CGFloat(index)/CGFloat(itemCount)) *  0.8
        return UIColor(red: 100/255, green: color, blue: 150/255, alpha: 2)
        
    }
    
    
}


