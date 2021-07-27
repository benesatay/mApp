//
//  ContentListModels.swift
//  mApp
//
//  Created by Bahadır Enes Atay on 25.07.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum ContentList {
    // MARK: Use cases
    
    enum FetchRequest {
        struct Request {
            let digitalContentReq: ContentDetailRequest
        }
        
        struct Response {
            let series: [SearchResponse]
            let keyword: String
        }
        
        struct ViewModel {
            struct SeriesData {
                let name: String
                let year: String
                let image: String
                let id: String
            }

            let keyword: String
            let seriesData: [SeriesData]
        }
    }
}
