//
//  ContentView.swift
//  PDFHandler
//
//  Created by Mike Centers on 6/15/20.
//  Copyright © 2020 Mike Centers. All rights reserved.
//

import SwiftUI
import PDFKit


struct ContentView: View {
    let document: PDFDocument
    
    
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
    
    
    var body: some View {
        
        ViewPDF(document: self.document,
                displayDirection: .vertical,
                displayMode: .singlePageContinuous)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
