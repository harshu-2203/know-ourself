//
//  ViewController.swift
//  knowourself
//
//  Created by MacBook Pro on 20/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let mylabel:UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor(red:0.883,green: 0.049,blue: 0.049,alpha: 1)
        lbl.font = UIFont(name: "Roboto-Bold",size: 48)
        lbl.textAlignment = .center
        lbl.attributedText = NSMutableAttributedString(string: "KNOW OURSELF", attributes: [NSAttributedString.Key.kern:8])
        lbl.lineBreakMode = .byWordWrapping
        return lbl
    }()
    
    private let frontimage : UIImageView = {
        let frontimage = UIImageView()
        frontimage.contentMode = .scaleAspectFit
        frontimage.image = UIImage(named: "image-removebg-preview")
        return frontimage
    }()
    
    private let mybtton:UIButton = {
        let btn = UIButton()
        btn.setTitle("LET'S START", for: .normal)
        btn.addTarget(self, action: #selector(redirect), for: .touchUpInside)
        btn.layer.cornerRadius = 22
        btn.layer.backgroundColor=UIColor(red: 0.858, green: 0.925, blue: 0.082, alpha: 1).cgColor
        return btn
        
    }()
    @objc func redirect()
    {
        let vc = page2Controller()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
        view.addSubview(mylabel)
        view.addSubview(frontimage)
        view.addSubview(mybtton)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mybtton.frame = CGRect(x:48,y:500,width:250,height:57)
        frontimage.frame = CGRect(x:-40,y:167,width:400,height:300)
        mylabel.frame = CGRect(x:27,y:39,width:301,height:96)
        
    }


}

