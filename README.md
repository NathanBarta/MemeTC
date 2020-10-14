# MemeTC

A simple string styler written in Swift.

### Available styles:
* Spongebob: "Hello World" --> "hEllo WOrLd"
* Leet: "Hello World" --> "H3110 W0r1d"
* sPaced-out/Padded: "Hello World" --> "H e l l o   W o r l d"

### How to Use:
In terminal:
```
`MemeTC "Text you want to style" --{style}
```

Styles:
* Spongebob: --s
* Leet: --l
* Padded: --p

Run this code inside the project directory so you can access the tool from anywhere:
```
swift build --configuration release
cp -f .build/release/banner /usr/local/bin/banner
```

### Why?
Learning how to make command-line tools with Swift, distribute packages to the public, and use GitHub.

### Future Work
* Make more one-liner stylers for practice & fun
* Learn how to do more complicated things with packages

### Tech Used:
* [Swift Argument Parser](https://github.com/apple/swift-argument-parser)

