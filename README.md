# Thread
**Thread** is a tiny HTTP server engine written in Swift.

Originally based on [Swifter](https://github.com/httpswift/swifter) by Damian Kołakowski.
## Usage 

```swift
let server = HttpServer()
server["/hello"] = { .ok(.htmlBody("You asked for \($0)")) }
server.start()
````

## Installation

Add **Thread** to your `Package.swift`:

```swift
.package(url: "https://github.com/thigcampos/thread.git", branch: "main")
```

Then import it in your Swift code:

```swift
import Thread
```

## License
This fork is licensed under BSD-3-Clause. Check [LICENSE](LICENSE) for more information.
