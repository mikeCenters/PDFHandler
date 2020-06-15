//
//  PDFViewRep.swift
//  PDFHandler
//
//  Created by Mike Centers on 6/15/20.
//  Copyright © 2020 Mike Centers. All rights reserved.
//

import SwiftUI
import PDFKit


/// View Rep to communitcate SwiftUI to UIKit.
struct PDFViewRep: UIViewRepresentable {
    let document: PDFDocument
    let displayDirection: PDFKit.PDFDisplayDirection
    let displayMode: PDFKit.PDFDisplayMode
    
    
    func makeUIView(context: Context) -> UIView {
        
        let view = UIView()
        let pdfView = PDFView()


        pdfView.translatesAutoresizingMaskIntoConstraints = false
        pdfView.autoScales = true
        
        pdfView.document = self.document
        pdfView.displayMode = self.displayMode
        pdfView.displayDirection = self.displayDirection

        view.addSubview(pdfView)
        pdfView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        pdfView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        pdfView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        pdfView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}
