# PDFHandler

> SwiftUI compatible PDF View


---

## Example

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
