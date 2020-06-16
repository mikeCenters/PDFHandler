//
//  ViewPDF.swift
//  PDFHandler
//
//  Created by Mike Centers on 6/15/20.
//  Copyright © 2020 Mike Centers. All rights reserved.
//

import SwiftUI
import PDFKit

/// SwiftUI View for PDF Documents.
struct ViewPDF: View {
    /// Document to be loaded.
    let document: PDFDocument
    /// Direction for the PDF to flow.
    let displayDirection: PDFKit.PDFDisplayDirection
    /// PDF Onscreen display.
    let displayMode: PDFKit.PDFDisplayMode
    
    
    var body: some View {
        PDFViewRep(document: self.document,
                   displayDirection: self.displayDirection,
                   displayMode: self.displayMode)
    }
}



// MARK: - Test Data

struct ViewPDF_Previews: PreviewProvider {
    static let document: PDFDocument = {
        guard let path = Bundle.main.url(forResource: "SamplePDF",
                                         withExtension: ".pdf")
            else {
                fatalError("Invalid path")
        }
        guard let document = PDFDocument(url: path)
            else {
                fatalError("PDF Document could not be created")
        }
        
        return document
    }()
    
    
    static var previews: some View {
        ViewPDF(document: self.document,
                displayDirection: .vertical,
                displayMode: .singlePageContinuous)
    }
}

