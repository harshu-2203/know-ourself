//
//  page3Controller.swift
//  knowourself
//
//  Created by MacBook Pro on 20/06/21.
//

import UIKit

class page3Controller: UIViewController {

    private let myGender : UILabel = {
        let gen = UILabel()
        gen.text = "Your Gender"
        gen.textColor = .black
        gen.textAlignment = .center
        gen.shadowColor = .darkGray
        return gen
        
    }()
    
    private let segment:UISegmentedControl = {
        let segment = UISegmentedControl()
        segment.insertSegment(withTitle: "Male", at: 0, animated: true)
        segment.insertSegment(withTitle: "Female", at: 1, animated: true)
        return segment
    }()
    
    private let mytme : UILabel = {
        let mytime = UILabel()
        mytime.text = "How much u give to youself?"
        mytime.textColor = .black
        mytime.textAlignment = .center
        mytime.shadowColor = .darkGray
        return mytime
        
    }()
    
    
    
    private let stepper : UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.addTarget(self, action: #selector(handleheight), for: .valueChanged)
        return stepper
    } ()
    
    @objc func handleheight()
    {
        let height = stepper.value
        lookresult.text = String(height)
        //activity part
    
        activityIndicator.isHidden = true
        activityIndicator.stopAnimating()
        mybtton.isHidden = false
        
    }
    
    private let lookresult : UITextView = {
        let txtview = UITextView()
        txtview.isEditable = false
        txtview.font = UIFont.systemFont(ofSize: 17.0)
        txtview.backgroundColor = .systemFill
        txtview.textColor = .blue
        txtview.textAlignment = .center
        txtview.layer.cornerRadius = 10
        return txtview
    } ()
    
    private let activityIndicator : UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView()
        activity.style = .large
        activity.color = .systemYellow
        activity.startAnimating()
        return activity
    } ()
    
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
        let vc = page4Controller()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private let mylife : UILabel = {
        let life = UILabel()
        life.text = "Are you happy with your current sitution?"
        life.textColor = .black
        life.textAlignment = .center
        life.shadowColor = .darkGray
        return life
        
    }()
    
    private let myyes : UILabel = {
        let yes = UILabel()
        yes.text = "YES"
        yes.textColor = .black
        yes.textAlignment = .center
        yes.shadowColor = .darkGray
        return yes
        
    }()
    private let myno : UILabel = {
        let no = UILabel()
        no.text = "NO"
        no.textColor = .black
        no.textAlignment = .center
        no.shadowColor = .darkGray
        return no
        
    }()
    
    private let switche : UISwitch = {
        let switche = UISwitch()
        switche.isEnabled = true
        return switche
    }()
    
    private let progress : UIProgressView = {
        let progress = UIProgressView()
        progress.setProgress(0.0, animated: true)
        progress.progressTintColor = .black
        return progress
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
        view.addSubview(myGender)
        view.addSubview(segment)
        view.addSubview(mytme)
     
        view.addSubview(stepper)
        view.addSubview(lookresult)
        view.addSubview(activityIndicator)
        view.addSubview(mybtton)
        view.addSubview(switche)
        view.addSubview(mylife)
        view.addSubview(myyes)
        view.addSubview(myno)
        view.addSubview(progress)
        title = "3rd pharse"
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myGender.frame = CGRect(x:20,y:70,width:view.width - 40,height:40)
        segment.frame = CGRect(x: 20, y: myGender.bottom + 1, width: view.width - 40, height: 40)
        mytme.frame =  CGRect(x: 20, y: segment.bottom + 20, width: view.width - 40, height: 40)
        stepper.frame = CGRect(x: 30, y: mytme.bottom + 5, width: view.width - 40, height: 40)
        lookresult.frame = CGRect(x: 160, y: mytme.bottom + 5, width: view.width - 180, height: 40)
        activityIndicator.frame = CGRect(x: 20, y: lookresult.bottom + 15, width: view.width - 40, height: 50)
        mylife.frame = CGRect(x: 20, y: activityIndicator.bottom + 20, width: view.width - 40, height: 40)
        
        myyes.frame = CGRect(x: 30, y:  mylife.bottom + 20, width: view.width - 200, height: 40)
        switche.frame = CGRect(x: 140, y: mylife.bottom + 20, width: view.width - 10, height: 40)
        myno.frame = CGRect(x: 200, y:  mylife.bottom + 20, width: view.width - 240, height: 40)
        
        mybtton.frame = CGRect(x: 20, y: switche.bottom + 20, width: view.width - 40, height: 40)
        progress.frame = CGRect(x: 20, y: switche.bottom + 20, width: view.width - 40, height: 40)
                
    }

}
