//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let mainView: UIView = {
    let main = UIView()
    // important when setting contraints programmatically
    main.translatesAutoresizingMaskIntoConstraints = false
    main.backgroundColor = .green
    return main
  }()
  
    @IBOutlet var purpleBox: UIView!
    
//// Set up purple square
//   let purpleSquare: UIView = {
//     let purpleSquare = UIView()
//    purpleSquare.backgroundColor = .purple
//    purpleSquare.translatesAutoresizingMaskIntoConstraints = false
//    return purpleSquare
//   }()
//


    
    
  let squareButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Square", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
    return butt
  }()
  
  let portraitButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Portrait", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
    return butt
  }()
  
  let landScapeButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Landscape", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
    return butt
  }()
  
  var widthAnchor: NSLayoutConstraint?
  var heightAnchor: NSLayoutConstraint?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
//    view.addSubview(purpleSquare)
//
//    purpleSquare.leadingAnchor.constraint(equalToSystemSpacingAfter: mainView.leadingAnchor, multiplier: 40).isActive = true
//    purpleSquare.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -15).isActive = true
//    purpleSquare.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.1).isActive = true
//    purpleSquare.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -30).isActive = true
    
    setupLayout()
    
    
//    blueStack()
//    RedOrangeSquare()


  }
    
//    func RedOrangeSquare(){
//        let redSquare = UIView()
//        redSquare.backgroundColor = .red
//        redSquare.translatesAutoresizingMaskIntoConstraints = false
//
//        view.addSubview(redSquare)
//        redSquare.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true
//        redSquare.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -8.0).isActive = true
//        redSquare.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.1).isActive = true
//        redSquare.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.35).isActive = true
//
//
//
//
//        let orangeSquare1 = UIView()
//        orangeSquare1.backgroundColor = .orange
//        orangeSquare1.translatesAutoresizingMaskIntoConstraints = false
////        orangeSquare1.heightAnchor.constraint(equalTo: redSquare.heightAnchor, multiplier: 0.8).isActive = true
////        orangeSquare1.widthAnchor.constraint(equalTo: redSquare.widthAnchor, multiplier: 0.3).isActive = true
//
//
//
//        let orangeSquare2 = UIView()
//        orangeSquare2.backgroundColor = .orange
//        orangeSquare2.translatesAutoresizingMaskIntoConstraints = false
////        orangeSquare2.heightAnchor.constraint(equalTo: redSquare.heightAnchor, multiplier: 0.3).isActive = true
////        orangeSquare2.widthAnchor.constraint(equalTo: redSquare.widthAnchor, multiplier: 0.3).isActive = true
////        orangeSquare2.heightAnchor.constraint(equalToConstant: redSquare.frame.height * 0.8).isActive = true
//
//
//        let orangeStack = UIStackView(arrangedSubviews: [orangeSquare1, orangeSquare2])
//        orangeStack.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(orangeStack)
//
//        orangeStack.axis = .horizontal
//        orangeStack.spacing = 2
//        orangeStack.distribution = .fillEqually
//
//        orangeStack.topAnchor.constraint(equalTo: redSquare.topAnchor, constant: 3).isActive = true
//        orangeStack.centerXAnchor.constraint(equalTo: redSquare.centerXAnchor).isActive = true
//        orangeStack.centerYAnchor.constraint(equalTo: redSquare.centerYAnchor).isActive = true
//
//    }
//
//
//    func blueStack(){
//
//        let blueSquare1 = UIView()
//        blueSquare1.backgroundColor = .blue
//        blueSquare1.translatesAutoresizingMaskIntoConstraints = false
////        blueSquare1.heightAnchor.constraint(equalToConstant: self.view.frame.width/10).isActive = true
//        blueSquare1.heightAnchor.constraint(equalToConstant: 5.0).isActive = true
//        blueSquare1.widthAnchor.constraint(equalToConstant: self.view.frame.width/10).isActive = true
//
//
//
//        let blueSquare2 = UIView()
//        blueSquare2.backgroundColor = .blue
//        blueSquare2.translatesAutoresizingMaskIntoConstraints = false
////        blueSquare2.heightAnchor.constraint(equalToConstant: self.view.frame.width/10).isActive = true
//        blueSquare2.heightAnchor.constraint(equalToConstant: 5.0).isActive = true
//        blueSquare2.widthAnchor.constraint(equalToConstant: self.view.frame.width/10).isActive = true
//
//
//
//
//        let blueSquare3 = UIView()
//        blueSquare3.backgroundColor = .blue
//        blueSquare3.translatesAutoresizingMaskIntoConstraints = false
////        blueSquare3.heightAnchor.constraint(equalToConstant: self.view.frame.width/10).isActive = true
//        blueSquare3.heightAnchor.constraint(equalToConstant: 5.0).isActive = true
//        blueSquare3.widthAnchor.constraint(equalToConstant: self.view.frame.width/10).isActive = true
//
//
//        let blueStack = UIStackView(arrangedSubviews: [blueSquare1, blueSquare2,blueSquare3])
//        blueStack.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(blueStack)
//        blueStack.axis = .vertical
//        blueStack.alignment = .center
//        blueStack.distribution = .fillEqually
//        blueStack.spacing = 30
//
//        blueStack.topAnchor.constraint(equalToSystemSpacingBelow: mainView.topAnchor, multiplier: 20.0).isActive = true
////        blueStack.bottomAnchor.constraint(equalToSystemSpacingBelow: mainView.bottomAnchor, multiplier: -50).isActive = true
//
////        blueStack.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.3).isActive = true
////        blueStack.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.3).isActive = true
//        blueStack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        blueStack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
//
//    }
    
    
    
    

  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
    widthAnchor?.isActive = true
    
    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
    heightAnchor?.isActive = true
    
    let buttStackView = UIStackView(arrangedSubviews: [
      squareButton, portraitButton, landScapeButton])
    buttStackView.translatesAutoresizingMaskIntoConstraints = false
    buttStackView.axis = .horizontal
    buttStackView.alignment = .center
    buttStackView.distribution = .fillEqually
    
    view.addSubview(buttStackView)
    NSLayoutConstraint.activate([
      buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
      buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      buttStackView.heightAnchor.constraint(equalToConstant: 50),
      buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
      ])
  }

  @objc private func squareTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
  
  @objc private func portraitTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
    
  }
  
  @objc private func landscapeTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
}

