//
//  PDFHandler.swift
//  PDFHandler
//
//  Created by Mike Centers on 6/15/20.
//  Copyright © 2020 Mike Centers. All rights reserved.
//

import PDFKit


// MARK: - PDF Agent
/// Object used to manage PDF files.
class PDFAgent {
    /// Model object for handling. This is the PDF document that is being processed.
    private var document = PDFDocument()
    
    
}

// MARK: - PDF Handler Functions
extension PDFAgent {
    
    /// Load the document for handling.
    func loadDocument(path: String) {
        guard let path = Bundle.main.url(forResource: path,
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
    
    /// Get the PDF document used by the agent.
    func getDocument() -> PDFDocument {
        return self.document
    }
    
}
