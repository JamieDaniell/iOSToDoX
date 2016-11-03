//
//  SecondViewController.swift
//  iOSToDoX
//
//  Created by James Daniell on 31/10/2016.
//  Copyright © 2016 JamesDaniell. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UITextFieldDelegate
{
    
    @IBOutlet weak var itemTextField: UITextField!
    
    
    @IBAction func add(_ sender: AnyObject)
    {
        
        var items: NSMutableArray
        let array = UserDefaults.standard.object(forKey: "items") as? NSArray
        if array != nil
        {
            items = NSMutableArray(array: array! )
            items.add( itemTextField.text! )
            print("items: \(items)")
        }
        else
        {
            items = [itemTextField.text!]
            
        }
        UserDefaults.standard.set(items, forKey: "items")
        itemTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

