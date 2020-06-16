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
    private var pdfHandler: PDFHandler
    @Published var document: PDFDocument
    
    
    init() {
        self.pdfHandler = PDFHandler()
        self.document = PDFDocument()
    }
}

extension ContentViewModel {
    
    /// Load PDF files.
    func loadPDF(path: String) {
        self.document = self.pdfHandler.getDocument(path: path)
    }
    
}

