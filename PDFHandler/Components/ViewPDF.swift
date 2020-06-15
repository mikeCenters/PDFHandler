//
//  ViewPDF.swift
//  PDFHandler
//
//  Created by Mike Centers on 6/15/20.
//  Copyright © 2020 Mike Centers. All rights reserved.
//

import SwiftUI
import PDFKit


struct ViewPDF: View {
    let document: PDFDocument
    
    var body: some View {
        
        PDFViewRep(document: self.document)
    }
}


