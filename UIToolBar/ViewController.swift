//
//  ViewController.swift
//  UIToolBar
//
//  Created by 坂本龍哉 on 2021/10/25.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var deleteToolBar: UIToolbar!
    @IBOutlet private weak var deleteButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        switch editing {
        case true:
            print(editing)
            deleteToolBar.isHidden = false
            deleteButton.isEnabled = true
        case false:
            print(editing)
            deleteToolBar.isHidden = true
            deleteButton.isEnabled = false
        }
    }

    @IBAction private func deleteButtonDidTapped(_ sender: Any) {
        print("削除")
    }
    
    private func setupNavigationBar() {
        navigationItem.rightBarButtonItem = editButtonItem
        deleteToolBar.isHidden = true
        deleteButton.isEnabled = false
    }
    
}


