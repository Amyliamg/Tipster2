//
//  MovieDetailsViewController.swift
//  Tipster
//
//  Created by Amy Liang on 2022/2/27.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    
    @IBOutlet weak var posterView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    var movie: [String:Any]!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let baseurl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseurl + posterPath)
        posterView.af_setImage(withURL: posterURL!)
        
        titleLabel.text = movie[ "title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()

        
        
        let backropPath = movie["poster_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backropPath)
        backdropView.af_setImage(withURL: backdropURL!)
        
        
        // Do any additional setup after loading the view.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
