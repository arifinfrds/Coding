//
//  CategoryViewController.swift
//  Coding
//
//  Created by Arifin Firdaus on 3/28/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

// agus.c@icloud.com

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    internal let edgeInset: CGFloat = 20.0
    
    internal let categories = Category.getCategories()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }

    private func setupCollectionView() {
        let nib = UINib(nibName: "CategoryCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "category_cell")
        
        collectionView.dataSource = self
        collectionView.delegate = self

    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segue_list_view_controller" {
            let cell = sender as! UICollectionViewCell
            guard let indexPath = collectionView.indexPath(for: cell) else { return }
            
            let listVC = segue.destination as! ListViewController
            listVC.title = categories[indexPath.row].title
        }
    }



}

// MARK: - UICollectionViewDataSource
extension CategoryViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "category_cell", for: indexPath) as! CategoryCell
        let category = categories[indexPath.row]
        cell.dataSource = category
        return cell
    }
}

extension CategoryViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        performSegue(withIdentifier: "segue_list_view_controller", sender: cell)
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension CategoryViewController: UICollectionViewDelegateFlowLayout {
    
    // sizeForItemAt
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // width & height are same
        let size = CGSize(
            width: (collectionView.frame.width / 2) - edgeInset / 2,
            height: (collectionView.frame.width / 2) - edgeInset / 2
        )
        return size
    }
    
    // insetForSectionAt
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset: CGFloat = 5.0
        return UIEdgeInsetsMake(inset, inset, inset, inset)
    }
}



