//
//  Extensions.swift
//  LifestyleApp
//
//  Created by ZYY on 12/9/23.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable
    var radius: CGFloat  {
        set {
            self.layer.cornerRadius = newValue
        }
        get { return self.layer.cornerRadius }
    }
    
}

extension UIViewController {
    
    // MARK: Loading popover - auto hide
    func showTextHUD(_ title: String, _ subTitle: String? = nil) {
        let hub = MBProgressHUD.showAdded(to: view, animated: true)
        hub.mode = .text
        hub.label.text = title
        hub.detailsLabel.text = subTitle
        hub.hide(animated: true, afterDelay: 1)
    }
    
    // Mark: Textfield related
    func hideKeyBoardWhenTapperAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension UITextField {
    var unwrappedText: String { text ?? ""}
}
