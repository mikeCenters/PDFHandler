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
    @ObservedObject var viewModel = ContentViewModel()
    
    
    
    var body: some View {
        ViewPDF(document: self.viewModel.document,
                displayDirection: .vertical,
                displayMode: .singlePageContinuous
        )
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
