//
//  FirstViewController.swift
//
//  Copyright (c) 2017 Keiichi Sato. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit
import SegueHandling

class FirstViewController: UIViewController, SegueHandling {
    
    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueIdentifier = segueIdentifier(for: segue) else {
            // Unexpected segue
            return
        }
        guard let secondViewController = segue.destination as? SecondViewController else {
            // Unexpected destination
            return
        }
        switch segueIdentifier {
        case .push:
            secondViewController.message = "Push"
        case .modal:
            secondViewController.message = "Modal"
        }
    }
    
    // MARK: SegueHandling
    
    enum SegueIdentifier: String {
        case push
        case modal
    }
}

// MARK: Actions

extension FirstViewController {
    
    @IBAction private func unwindToFirstViewController(segue: UIStoryboardSegue) {
    }
    
    @IBAction private func pushButtonDidTap( _ sender: Any?) {
        self.performSegue(withIdentifier: .push, sender: nil)
    }
    
    @IBAction private func modalButtonDidTap( _ sender: Any?) {
        self.performSegue(withIdentifier: .modal, sender: nil)
    }
}
