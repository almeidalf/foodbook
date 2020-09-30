//
//  HomeViewController.swift
//  FoodBook
//
//  Created by Reply on 20/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate {
    
    var homeViewModel = HomeVM()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        setupTableView()
        homeViewModel.buscarTodasReceitas()
        tableView.reloadData()
    }

    @IBAction func requestReceitas(_ sender: Any) {
        homeViewModel.buscarTodasReceitas()
        tableView.reloadData()
    }
    
    private func setupTableView(){
        let nib = UINib(nibName: "CellReceitas", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cellXibReceitas")
        self.tableView.rowHeight = 60.0
    }
    
}


extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeViewModel.teste?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CellReceitas = tableView.dequeueReusableCell(withIdentifier: "cellXibReceitas", for: indexPath) as! CellReceitas
        if let receita = homeViewModel.teste{
            cell.lblTituloReceita.text = receita[indexPath.row].titulo
            cell.lblDescricao.text = receita[indexPath.row].descricao
        }
        
        
        return cell
    }
}

