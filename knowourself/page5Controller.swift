//
//  page5Controller.swift
//  knowourself
//
//  Created by MacBook Pro on 20/06/21.
//

import UIKit

class page5Controller: UIViewController {
    
    private let final : UILabel = {
        let final = UILabel()
        final.text = "Now upload your happy picture"
        final.textColor = .white
        final.textAlignment = .center
        final.shadowColor = .darkGray
        return final
        
    }()
    
    private let welcomeimage : UIImageView = {
        let welcomeimage = UIImageView()
        welcomeimage.contentMode = .scaleAspectFit
        welcomeimage.image = UIImage(named: "7")
        return welcomeimage
    }()
    
    private let toolbar :UIToolbar = {
        let toolbar = UIToolbar()
        let close = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(handleback))
        let space = UIBarButtonItem(systemItem: .flexibleSpace)
        let gallery = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(handlegallery))
        toolbar.items = [close,space,gallery]
        
        return toolbar
    } ()
    
    @objc func handleback() {
        
        self.dismiss(animated: true)
    }
    @objc func handlegallery() {
        profileimg.sourceType = .photoLibrary
        DispatchQueue.main.async {
            self.present(self.profileimg, animated: true)
        }
        
    }
    
    private let tabbar: UITabBar = {
        let tabbar = UITabBar()
        let history = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        let downloads = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        tabbar.items = [history,downloads]
        return tabbar
    } ()
    
    private let profileimg : UIImagePickerController = {
        let profile = UIImagePickerController()
        profile.allowsEditing = false
        return profile
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        view.addSubview(final)
        view.addSubview(toolbar)
        view.addSubview(tabbar)
        view.addSubview(welcomeimage)
        tabbar.delegate = self
        profileimg.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        final.frame = CGRect(x: 0, y: 250, width: view.width, height: 40)
        let toolbarH:CGFloat = view.safeAreaInsets.top + 40
        toolbar.frame = CGRect(x: 0, y: 0, width: view.width, height: toolbarH)
        let tabbarH:CGFloat = view.safeAreaInsets.top + 49
        tabbar.frame = CGRect(x: 0, y: view.height - tabbarH, width: view.width, height: tabbarH)
        welcomeimage.frame = CGRect(x: 20, y: 70, width: view.width - 40, height: 120)
        
        
    }

}
extension page5Controller: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(item.tag)
    }
}
extension page5Controller : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedimg = info[.originalImage] as? UIImage {
            welcomeimage.image = selectedimg
        }
        picker.dismiss(animated: true)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}


