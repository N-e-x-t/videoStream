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
        
        let p1 = cellModel(imageURL: "https://i.ytimg.com/vi/CD-E-LDc384/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=FkDX6qK754VnSozVHtW8Lw15bHY", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CD-E-LDc384\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "Metallica - Enter Sandman [Official Music Video]")
        
        
        let p2 = cellModel(imageURL: "https://i.ytimg.com/vi/UprcpdwuwCg/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=oLudMeTATxQmMyBOiJzfaVV9Tu0", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UprcpdwuwCg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "twenty one pilots: Heathens (from Suicide Squad: The Album) [OFFICIAL VIDEO]")
        
        let p3 = cellModel(imageURL: "https://i.ytimg.com/vi/60ItHLz5WEA/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=67&sigh=duu4ukZNwPRxjNrVehmMouWL6zI" , videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/60ItHLz5WEA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Alan Walker - Faded")
        
        let p4 = cellModel(imageURL: "hhttps://i.ytimg.com/vi/CD-E-LDc384/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=FkDX6qK754VnSozVHtW8Lw15bHY", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CD-E-LDc384\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "Metallica - Enter Sandman [Official Music Video]")
        
        let p5 = cellModel(imageURL: "https://i.ytimg.com/vi/UprcpdwuwCg/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=oLudMeTATxQmMyBOiJzfaVV9Tu0", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UprcpdwuwCg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "twenty one pilots: Heathens (from Suicide Squad: The Album) [OFFICIAL VIDEO]")
        
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

