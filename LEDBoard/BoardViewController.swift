//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by sae hun chung on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController{

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var mainTextLabel: UILabel!
    
    @IBOutlet weak var indicatorView: UIView!
    
    let colerList: [UIColor] = [.blue, .red, .cyan, .lightGray, .black]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        userTextField.delegate = self

        setUI()
    }
    
    func setUI() {
        userTextField.placeholder = "내용을 작성해주세요!"
//        userTextField.textColor = .lightGray
//        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress
        mainTextLabel.numberOfLines = 0
                
        setUIButton(buttonName: sendButton, buttonTitle: "Send", highlightedTitle: "빨리보내!!")
        setUIButton(buttonName: textColorButton , buttonTitle: "Color", highlightedTitle: "Change!!")
    }
    
    func setUIButton(buttonName: UIButton, buttonTitle: String, highlightedTitle: String) {
        
        buttonName.backgroundColor = .yellow
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
        
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(highlightedTitle, for: .highlighted)

    }
    
    @IBAction func sendButtonTapped(_ sender: UIButton) {
        userTextField.resignFirstResponder()
        mainTextLabel.text = userTextField.text
        userTextField.text = ""
    }
    
    @IBAction func textColorButtonTapped(_ sender: UIButton) {
        mainTextLabel.textColor = colerList.randomElement()
    }
    
    @IBAction func tapGestureTapped(_ sender: UITapGestureRecognizer) {
         // 화면에 대한 편집 종료를 명시
        
        if userTextField.isEditing {
            
            userTextField.resignFirstResponder()
            return
            
        } else if !userTextField.isFocused {
            
            if indicatorView.isHidden {
                indicatorView.isHidden = false
            } else {
                indicatorView.isHidden = true
            }
        }
        
    }

    
    @IBAction func didEndOnExit(_ sender: UITextField) {
        print(#function)
        view.endEditing(true)
    }
    

}

//extension BoardViewController: UITextFieldDelegate {
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        print(#function)
//
//        return textField.resignFirstResponder()
//    }
//
//
//}

