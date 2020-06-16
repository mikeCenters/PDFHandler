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
    private var pdfAgent: PDFAgent
    @Published var document: PDFDocument
    
    
    init() {
        self.pdfAgent = PDFAgent()
        self.document = PDFDocument()
    }
}

extension ContentViewModel {
    
    /// Load PDF files.
    func loadPDF(path: String) {
        self.pdfAgent.loadDocument(path: path)
        self.document = self.pdfAgent.getDocument()
    }
    
}

