# PDFAgent

> SwiftUI compatible PDF View


---

PDF Agent is an object used to manipulate PDF files with the use of SwiftUI views. 


---

# Branches
The "master" branch is the complete xCode project.

The "package" branch is used for import into an existing project.

# Currently Working


## Load document into SwiftUI body.

```
struct ContentView: View {
    let document: PDFDocument

    var body: some View {
        ViewPDF(document: self.document,
                displayDirection: .vertical,
                displayMode: .singlePageContinuous)
    }
}
```



---

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)
