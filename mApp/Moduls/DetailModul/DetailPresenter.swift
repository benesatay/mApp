//
//  DetailPresenter.swift
//  mApp
//
//  Created by Bahadır Enes Atay on 26.07.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol DetailPresentationLogic {
    func presentDetail(response: Detail.FetchRequest.Response)
    func presentError(_ error: String)
}

class DetailPresenter  {
    weak var viewController: DetailDisplayLogic?

}

extension DetailPresenter: DetailPresentationLogic {
    func presentDetail(response: Detail.FetchRequest.Response) {
        let item = response.content
        if let urlStr = item.poster,
           let title = item.title,
           let imdbRating = item.imdbRating,
           let director = item.director,
           let writer = item.writer,
           let year = item.year,
           let genre = item.genre,
           let awards = item.awards,
           let production = item.production,
           let type = item.type,
           let runtime = item.runtime,
           let plot = item.plot {
            let detail = Detail.FetchRequest.ViewModel.ContentData(image: urlStr, title: title, year: year, rating: imdbRating, director: director, writer: writer, genre: genre, awards: awards, production: production, type: type, runtime: runtime, plot: plot)
            let viewModel = Detail.FetchRequest.ViewModel(contentData: detail)
            viewController?.getFetchedDetail(viewModel: viewModel)
            Logger.shared.logEvent("movie_name", title)
        }
    }
    
    func presentError(_ error: String) {
        viewController?.presentError(error)
    }
}