//
//  page2Controller.swift
//  knowourself
//
//  Created by MacBook Pro on 20/06/21.
//

import UIKit

class page2Controller: UIViewController {
    
    private let mylbel:UILabel = {
        let lb = UILabel()
        lb.textColor = UIColor(red:0.883,green: 0.049,blue: 0.049,alpha: 1)
        lb.font = UIFont(name: "Roboto-Bold",size: 40)
        lb.textAlignment = .center
        lb.attributedText = NSMutableAttributedString(string: "HELLO!!", attributes: [NSAttributedString.Key.kern:8])
        lb.lineBreakMode = .byWordWrapping
        return lb
    }()

    private let myname:UILabel = {
        let name = UILabel()
        name.textColor = .black
        name.font = UIFont(name: "PoetsenOne-Regular",size: 27)
        name.textAlignment = .center
        name.attributedText = NSMutableAttributedString(string: "What is your name?", attributes: [NSAttributedString.Key.kern:-0.81])
        
        return name
    }()
    
    private let mybt:UILabel = {
        let btdy = UILabel()
        btdy.textColor = .black
        btdy.font = UIFont(name: "PoetsenOne-Regular",size: 27)
        btdy.textAlignment = .center
        btdy.attributedText = NSMutableAttributedString(string: "What is your birthdate?", attributes: [NSAttributedString.Key.kern:-0.81])
        
        return btdy
    }()
    
    private let look:UILabel = {
        let lk = UILabel()
        lk.textColor = .black
        lk.font = UIFont(name: "PoetsenOne-Regular",size: 27)
        lk.textAlignment = .center
        lk.attributedText = NSMutableAttributedString(string: "Rate your look", attributes: [NSAttributedString.Key.kern:-0.81])
        
        return lk
    }()
    
    private let txt:UITextField = {
        let txtfld = UITextField()
        txtfld.placeholder = "Write your name..."
        txtfld.textAlignment = .center
        txtfld.borderStyle = .roundedRect
        txtfld.backgroundColor = .systemGray
        return txtfld
    }()
    
    private let mydate :UIDatePicker = {
        let dat = UIDatePicker()
        dat.datePickerMode = .date
        dat.timeZone = TimeZone(secondsFromGMT: 0)
        return dat
    }()
    
    private let lookresult : UITextView = {
        let txtview = UITextView()
        txtview.isEditable = false
        txtview.font = UIFont.systemFont(ofSize: 17.0)
        txtview.backgroundColor = .systemFill
        txtview.textColor = .black
        txtview.textAlignment = .center
        return txtview
    } ()
    
    private let sld : UISlider = {
        let slider = UISlider()
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.addTarget(self, action: #selector(fanrate), for: .valueChanged)
        return slider
    }()
    
    @objc func fanrate() {
        let res = Int(sld.value)
        lookresult.text = String(res)
    }
    
    private let mybtton:UIButton = {
        let btn = UIButton()
        btn.setTitle("CONTINUE", for: .normal)
        btn.addTarget(self, action: #selector(redirect), for: .touchUpInside)
        btn.layer.cornerRadius = 22
        btn.layer.backgroundColor=UIColor(red: 0.858, green: 0.925, blue: 0.082, alpha: 1).cgColor
        return btn
        
    }()
    @objc func redirect()
    {
        let vc = page3Controller()
        navigationController?.pushViewController(vc, animated: true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
        view.addSubview(mylbel)
        view.addSubview(myname)
        view.addSubview(txt)
        view.addSubview(mybt)
        view.addSubview(mydate)
        view.addSubview(look)
        view.addSubview(lookresult)
        view.addSubview(sld)
        view.addSubview(mybtton)
        title="2nd phase"
        // Do any additional setup after loading the view.
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mylbel.frame = CGRect(x:20,y:70,width:view.width - 40,height:40)
        myname.frame = CGRect(x:20,y:mylbel.bottom + 20,width:view.width - 40,height:40)
        txt.frame = CGRect(x:20,y:myname.bottom + 5,width:view.width - 40,height:40)
        mybt.frame = CGRect(x:20,y:txt.bottom + 20,width:view.width - 40,height:40)
        mydate.frame = CGRect(x:90,y:mybt.bottom + 5,width:view.width - 40,height:40)
        look.frame = CGRect(x:20,y:mydate.bottom + 20,width:view.width - 40,height:40)
        lookresult.frame = CGRect(x:20,y:look.bottom + 5,width:view.width - 40,height:40)
        sld.frame = CGRect(x:20,y:lookresult.bottom + 5,width:view.width - 40,height:40)
        mybtton.frame = CGRect(x:20,y:sld.bottom + 20,width:view.width - 40,height:40)
        
        
        
        
    }

}
