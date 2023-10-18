//
//  NewsArticle.swift
//  Newspaper App
//
//  Created by Aleksandra Rusak on 2023-10-18.
//

import Foundation

struct NewsArticle: Identifiable {
    var id = UUID()
    var title: String
    var content: String
    var date: Date
    var urlImage: String
}
