//
//  ArticleTableViewController.swift
//  FileManagerHomework
//
//  Created by minea on 12/13/16.
//  Copyright © 2016 minea. All rights reserved.
//

import UIKit
import Kingfisher



class HomeArticleTableViewController: UITableViewController {
    
    var articles = [Articles]()
    var articleListPresenter: ArticleViewTablePresenter!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        articleListPresenter = ArticleViewTablePresenter()
        articleListPresenter.attachView(view:self)
        articleListPresenter.getArticles(page: 1, limit: 15)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return articles.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! ArticleTableViewCell
        cell.customCell(article: articles[indexPath.row])
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
extension HomeArticleTableViewController: ArticleViewProtocol {
    
    func setArticle(_ article: [Articles]) {
        print("setArticle")
        if article.count > 0 {
            self.articles = article
        }
        self.tableView.reloadData()
    }
    func setEmptyArticle() {
        print("setEmptyArticle")
    }
    
}
