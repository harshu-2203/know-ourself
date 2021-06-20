//
//  page4Controller.swift
//  knowourself
//
//  Created by MacBook Pro on 20/06/21.
//

import UIKit

class page4Controller: UIViewController {
    
    
    
    private let rateimg : UILabel = {
        let img = UILabel()
        img.text = "Now how are u feeling now !!!"
        img.textColor = .black
        img.textAlignment = .center
        img.shadowColor = .darkGray
        return img
        
    }()
    
    private let mypicker = UIPickerView()
    private let picker = ["happy","still sad","not intrested"]
    
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
        let vc = page5Controller()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        nav.setNavigationBarHidden(true, animated: false)
        present(nav, animated: false)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
        view.addSubview(rateimg)
        mypicker.dataSource = self
        mypicker.delegate = self
        view.addSubview(mybtton)
        title = "4th pharse"
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        rateimg.frame = CGRect(x:20,y:70,width:view.width - 40,height:40)
        mypicker.frame = CGRect(x:20,y:rateimg.bottom + 20,width:view.width - 40,height:40)
        mybtton.frame = CGRect(x:20,y:mypicker.bottom + 20,width:view.width - 40,height:40)
    
        
    }
  

}
extension page4Controller: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        picker.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        picker[row]
    }
    
    
}
