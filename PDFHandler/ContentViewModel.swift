//
//  ContentViewModel.swift
//  PDFHandler
//
//  Created by Mike Centers on 6/15/20.
//  Copyright © 2020 Mike Centers. All rights reserved.
//

import Combine
import PDFKit


class ContentViewModel: ObservableObject {
    @Published var document: PDFDocument
    
    
    
    
    init() {
        guard let path = Bundle.main.url(forResource: "SamplePDF",
                                         withExtension: ".pdf")
            else {
                fatalError("Invalid path")
        }
        guard let document = PDFDocument(url: path)
            else {
                fatalError("PDF Document could not be created")
        }
        
        self.document = document
    }
}
