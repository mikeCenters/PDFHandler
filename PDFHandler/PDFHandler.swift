//
//  PDFHandler.swift
//  PDFHandler
//
//  Created by Mike Centers on 6/15/20.
//  Copyright © 2020 Mike Centers. All rights reserved.
//

import PDFKit


/// Object used to manage PDF files.
class PDFHandler {
    private var document = PDFDocument()
    
    
    
}


extension PDFHandler {
    
    /// Return the PDF document with the given path.
    func getDocument(path: String) -> PDFDocument {
        guard let path = Bundle.main.url(forResource: path,
                                         withExtension: ".pdf")
            else {
                fatalError("Invalid path")
        }
        guard let document = PDFDocument(url: path)
            else {
                fatalError("PDF Document could not be created")
        }
        
        return document
    }
    
    /// Load the document for handling.
    func loadDocument(path: String) {
        self.document = getDocument(path: path)
    }
}
