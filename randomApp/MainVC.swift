//
//  ViewController.swift
//  randomApp
//
//  Created by Jigar Parekh on 05/04/17.
//  Copyright © 2017 Next. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var items = [cellModel]()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: item)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let singleItem = sender as? cellModel {
                
                destination.item = singleItem
                                
            }
        }
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ViewCell {
            let item = items[indexPath.row]
            cell.updateUI(_cellModel: item)
            return cell
            }
        else {
            return UITableViewCell()
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        
        let p1 = cellModel(imageURL: "https://i.ytimg.com/vi/sbMgYMY9Ryw/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=Af7ibynSxhyVi4XmRRnxMLrr8LQ", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sbMgYMY9Ryw\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "Breaking Bad")
        
        
        let p2 = cellModel(imageURL: "https://i.ytimg.com/vi/doku-BRZpD0/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=67&sigh=7YK_8tYXBKMLZQsozKlUXZe8SpI", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/U7elNhHwgBU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Narcos")
        
        let p3 = cellModel(imageURL: "https://i.ytimg.com/vi/JebwYGn5Z3E/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=QSGfUaeGawmpUPITWdqyx7Hd_GI" , videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JebwYGn5Z3E\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "13 Reasons Why")
        
        let p4 = cellModel(imageURL: "https://i.ytimg.com/vi/5kRo6Yg091o/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=67&sigh=Jhdi-joUHteFCWU7HmuaWUkM3eE", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5kRo6Yg091o\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "Stranger Things")
        
        let p5 = cellModel(imageURL: "https://i.ytimg.com/vi/gBabKoHSErI/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=_OdxNekwNds-u-yhVITInq3-Qw4", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ULwUzF1q5w4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "House of Cards")
        
        items.append(p1)
        items.append(p2)
        items.append(p3)
        items.append(p4)
        items.append(p5)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

