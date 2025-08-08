/**
 *  Originally from Swifter by Damian Kołakowski (2014-2016)
 *  Modified by Thiago Campos (2025)
 *  All rights reserved.
 */

import Foundation

// MARK: - Thread-Safe Buffer and Attributes (Replaces @TaskLocal)

private class HTMLState {
    var buffer = ""
    var attributes = [String: String?]()
}

private let stateKey = "com.thiago.thread.htmlstate"

private var currentHTMLState: HTMLState {
    get {
        if let state = Thread.current.threadDictionary[stateKey] as? HTMLState {
            return state
        }
        let newState = HTMLState()
        Thread.current.threadDictionary[stateKey] = newState
        return newState
    }
    set {
        Thread.current.threadDictionary[stateKey] = newValue
    }
}

private func getAttribute(_ key: String) -> String? {
    return currentHTMLState.attributes[key]!
}

private func setAttribute(_ key: String, _ value: String?) {
    currentHTMLState.attributes[key] = value
}

private func appendToBuffer(_ string: String) {
    currentHTMLState.buffer += string
}

// MARK: - Public Attribute Variables (Side-Effect Style)

public var idd: String? {
    get { getAttribute("id") }
    set { setAttribute("id", newValue) }
}
public var dir: String? {
    get { getAttribute("dir") }
    set { setAttribute("dir", newValue) }
}
public var rel: String? {
    get { getAttribute("rel") }
    set { setAttribute("rel", newValue) }
}
public var rev: String? {
    get { getAttribute("rev") }
    set { setAttribute("rev", newValue) }
}
public var alt: String? {
    get { getAttribute("alt") }
    set { setAttribute("alt", newValue) }
}
public var forr: String? {
    get { getAttribute("for") }
    set { setAttribute("for", newValue) }
}
public var src: String? {
    get { getAttribute("src") }
    set { setAttribute("src", newValue) }
}
public var type: String? {
    get { getAttribute("type") }
    set { setAttribute("type", newValue) }
}
public var href: String? {
    get { getAttribute("href") }
    set { setAttribute("href", newValue) }
}
public var text: String? {
    get { getAttribute("text") }
    set { setAttribute("text", newValue) }
}
public var abbr: String? {
    get { getAttribute("abbr") }
    set { setAttribute("abbr", newValue) }
}
public var size: String? {
    get { getAttribute("size") }
    set { setAttribute("size", newValue) }
}
public var face: String? {
    get { getAttribute("face") }
    set { setAttribute("face", newValue) }
}
public var char: String? {
    get { getAttribute("char") }
    set { setAttribute("char", newValue) }
}
public var cite: String? {
    get { getAttribute("cite") }
    set { setAttribute("cite", newValue) }
}
public var span: String? {
    get { getAttribute("span") }
    set { setAttribute("span", newValue) }
}
public var data: String? {
    get { getAttribute("data") }
    set { setAttribute("data", newValue) }
}
public var axis: String? {
    get { getAttribute("axis") }
    set { setAttribute("axis", newValue) }
}
public var Name: String? {
    get { getAttribute("Name") }
    set { setAttribute("Name", newValue) }
}
public var name: String? {
    get { getAttribute("name") }
    set { setAttribute("name", newValue) }
}
public var code: String? {
    get { getAttribute("code") }
    set { setAttribute("code", newValue) }
}
public var link: String? {
    get { getAttribute("link") }
    set { setAttribute("link", newValue) }
}
public var lang: String? {
    get { getAttribute("lang") }
    set { setAttribute("lang", newValue) }
}
public var cols: String? {
    get { getAttribute("cols") }
    set { setAttribute("cols", newValue) }
}
public var rows: String? {
    get { getAttribute("rows") }
    set { setAttribute("rows", newValue) }
}
public var ismap: String? {
    get { getAttribute("ismap") }
    set { setAttribute("ismap", newValue) }
}
public var shape: String? {
    get { getAttribute("shape") }
    set { setAttribute("shape", newValue) }
}
public var style: String? {
    get { getAttribute("style") }
    set { setAttribute("style", newValue) }
}
public var alink: String? {
    get { getAttribute("alink") }
    set { setAttribute("alink", newValue) }
}
public var width: String? {
    get { getAttribute("width") }
    set { setAttribute("width", newValue) }
}
public var rules: String? {
    get { getAttribute("rules") }
    set { setAttribute("rules", newValue) }
}
public var align: String? {
    get { getAttribute("align") }
    set { setAttribute("align", newValue) }
}
public var frame: String? {
    get { getAttribute("frame") }
    set { setAttribute("frame", newValue) }
}
public var vlink: String? {
    get { getAttribute("vlink") }
    set { setAttribute("vlink", newValue) }
}
public var deferr: String? {
    get { getAttribute("defer") }
    set { setAttribute("defer", newValue) }
}
public var color: String? {
    get { getAttribute("color") }
    set { setAttribute("color", newValue) }
}
public var media: String? {
    get { getAttribute("media") }
    set { setAttribute("media", newValue) }
}
public var title: String? {
    get { getAttribute("title") }
    set { setAttribute("title", newValue) }
}
public var scope: String? {
    get { getAttribute("scope") }
    set { setAttribute("scope", newValue) }
}
public var classs: String? {
    get { getAttribute("class") }
    set { setAttribute("class", newValue) }
}
public var manifest: String? {
    get { getAttribute("manifest") }
    set { setAttribute("manifest", newValue) }
}
public var value: String? {
    get { getAttribute("value") }
    set { setAttribute("value", newValue) }
}
public var clear: String? {
    get { getAttribute("clear") }
    set { setAttribute("clear", newValue) }
}
public var start: String? {
    get { getAttribute("start") }
    set { setAttribute("start", newValue) }
}
public var label: String? {
    get { getAttribute("label") }
    set { setAttribute("label", newValue) }
}
public var action: String? {
    get { getAttribute("action") }
    set { setAttribute("action", newValue) }
}
public var height: String? {
    get { getAttribute("height") }
    set { setAttribute("height", newValue) }
}
public var method: String? {
    get { getAttribute("method") }
    set { setAttribute("method", newValue) }
}
public var acceptt: String? {
    get { getAttribute("accept") }
    set { setAttribute("accept", newValue) }
}
public var object: String? {
    get { getAttribute("object") }
    set { setAttribute("object", newValue) }
}
public var scheme: String? {
    get { getAttribute("scheme") }
    set { setAttribute("scheme", newValue) }
}
public var coords: String? {
    get { getAttribute("coords") }
    set { setAttribute("coords", newValue) }
}
public var usemap: String? {
    get { getAttribute("usemap") }
    set { setAttribute("usemap", newValue) }
}
public var onblur: String? {
    get { getAttribute("onblur") }
    set { setAttribute("onblur", newValue) }
}
public var nohref: String? {
    get { getAttribute("nohref") }
    set { setAttribute("nohref", newValue) }
}
public var nowrap: String? {
    get { getAttribute("nowrap") }
    set { setAttribute("nowrap", newValue) }
}
public var hspace: String? {
    get { getAttribute("hspace") }
    set { setAttribute("hspace", newValue) }
}
public var border: String? {
    get { getAttribute("border") }
    set { setAttribute("border", newValue) }
}
public var valign: String? {
    get { getAttribute("valign") }
    set { setAttribute("valign", newValue) }
}
public var vspace: String? {
    get { getAttribute("vspace") }
    set { setAttribute("vspace", newValue) }
}
public var onload: String? {
    get { getAttribute("onload") }
    set { setAttribute("onload", newValue) }
}
public var target: String? {
    get { getAttribute("target") }
    set { setAttribute("target", newValue) }
}
public var prompt: String? {
    get { getAttribute("prompt") }
    set { setAttribute("prompt", newValue) }
}
public var onfocus: String? {
    get { getAttribute("onfocus") }
    set { setAttribute("onfocus", newValue) }
}
public var enctype: String? {
    get { getAttribute("enctype") }
    set { setAttribute("enctype", newValue) }
}
public var onclick: String? {
    get { getAttribute("onclick") }
    set { setAttribute("onclick", newValue) }
}
public var ontouchstart: String? {
    get { getAttribute("ontouchstart") }
    set { setAttribute("ontouchstart", newValue) }
}
public var onkeyup: String? {
    get { getAttribute("onkeyup") }
    set { setAttribute("onkeyup", newValue) }
}
public var profile: String? {
    get { getAttribute("profile") }
    set { setAttribute("profile", newValue) }
}
public var version: String? {
    get { getAttribute("version") }
    set { setAttribute("version", newValue) }
}
public var onreset: String? {
    get { getAttribute("onreset") }
    set { setAttribute("onreset", newValue) }
}
public var charset: String? {
    get { getAttribute("charset") }
    set { setAttribute("charset", newValue) }
}
public var standby: String? {
    get { getAttribute("standby") }
    set { setAttribute("standby", newValue) }
}
public var colspan: String? {
    get { getAttribute("colspan") }
    set { setAttribute("colspan", newValue) }
}
public var charoff: String? {
    get { getAttribute("charoff") }
    set { setAttribute("charoff", newValue) }
}
public var classid: String? {
    get { getAttribute("classid") }
    set { setAttribute("classid", newValue) }
}
public var compact: String? {
    get { getAttribute("compact") }
    set { setAttribute("compact", newValue) }
}
public var declare: String? {
    get { getAttribute("declare") }
    set { setAttribute("declare", newValue) }
}
public var rowspan: String? {
    get { getAttribute("rowspan") }
    set { setAttribute("rowspan", newValue) }
}
public var checked: String? {
    get { getAttribute("checked") }
    set { setAttribute("checked", newValue) }
}
public var archive: String? {
    get { getAttribute("archive") }
    set { setAttribute("archive", newValue) }
}
public var bgcolor: String? {
    get { getAttribute("bgcolor") }
    set { setAttribute("bgcolor", newValue) }
}
public var content: String? {
    get { getAttribute("content") }
    set { setAttribute("content", newValue) }
}
public var noshade: String? {
    get { getAttribute("noshade") }
    set { setAttribute("noshade", newValue) }
}
public var summary: String? {
    get { getAttribute("summary") }
    set { setAttribute("summary", newValue) }
}
public var headers: String? {
    get { getAttribute("headers") }
    set { setAttribute("headers", newValue) }
}
public var onselect: String? {
    get { getAttribute("onselect") }
    set { setAttribute("onselect", newValue) }
}
public var readonly: String? {
    get { getAttribute("readonly") }
    set { setAttribute("readonly", newValue) }
}
public var tabindex: String? {
    get { getAttribute("tabindex") }
    set { setAttribute("tabindex", newValue) }
}
public var onchange: String? {
    get { getAttribute("onchange") }
    set { setAttribute("onchange", newValue) }
}
public var noresize: String? {
    get { getAttribute("noresize") }
    set { setAttribute("noresize", newValue) }
}
public var disabled: String? {
    get { getAttribute("disabled") }
    set { setAttribute("disabled", newValue) }
}
public var longdesc: String? {
    get { getAttribute("longdesc") }
    set { setAttribute("longdesc", newValue) }
}
public var codebase: String? {
    get { getAttribute("codebase") }
    set { setAttribute("codebase", newValue) }
}
public var language: String? {
    get { getAttribute("language") }
    set { setAttribute("language", newValue) }
}
public var datetime: String? {
    get { getAttribute("datetime") }
    set { setAttribute("datetime", newValue) }
}
public var selected: String? {
    get { getAttribute("selected") }
    set { setAttribute("selected", newValue) }
}
public var hreflang: String? {
    get { getAttribute("hreflang") }
    set { setAttribute("hreflang", newValue) }
}
public var onsubmit: String? {
    get { getAttribute("onsubmit") }
    set { setAttribute("onsubmit", newValue) }
}
public var multiple: String? {
    get { getAttribute("multiple") }
    set { setAttribute("multiple", newValue) }
}
public var onunload: String? {
    get { getAttribute("onunload") }
    set { setAttribute("onunload", newValue) }
}
public var codetype: String? {
    get { getAttribute("codetype") }
    set { setAttribute("codetype", newValue) }
}
public var scrolling: String? {
    get { getAttribute("scrolling") }
    set { setAttribute("scrolling", newValue) }
}
public var onkeydown: String? {
    get { getAttribute("onkeydown") }
    set { setAttribute("onkeydown", newValue) }
}
public var maxlength: String? {
    get { getAttribute("maxlength") }
    set { setAttribute("maxlength", newValue) }
}
public var valuetype: String? {
    get { getAttribute("valuetype") }
    set { setAttribute("valuetype", newValue) }
}
public var accesskey: String? {
    get { getAttribute("accesskey") }
    set { setAttribute("accesskey", newValue) }
}
public var onmouseup: String? {
    get { getAttribute("onmouseup") }
    set { setAttribute("onmouseup", newValue) }
}
public var autofocus: String? {
    get { getAttribute("autofocus") }
    set { setAttribute("autofocus", newValue) }
}
public var onkeypress: String? {
    get { getAttribute("onkeypress") }
    set { setAttribute("onkeypress", newValue) }
}
public var ondblclick: String? {
    get { getAttribute("ondblclick") }
    set { setAttribute("ondblclick", newValue) }
}
public var onmouseout: String? {
    get { getAttribute("onmouseout") }
    set { setAttribute("onmouseout", newValue) }
}
public var httpEquiv: String? {
    get { getAttribute("http-equiv") }
    set { setAttribute("http-equiv", newValue) }
}
public var dataText: String? {
    get { getAttribute("data-text") }
    set { setAttribute("data-text", newValue) }
}
public var background: String? {
    get { getAttribute("background") }
    set { setAttribute("background", newValue) }
}
public var onmousemove: String? {
    get { getAttribute("onmousemove") }
    set { setAttribute("onmousemove", newValue) }
}
public var onmouseover: String? {
    get { getAttribute("onmouseover") }
    set { setAttribute("onmouseover", newValue) }
}
public var cellpadding: String? {
    get { getAttribute("cellpadding") }
    set { setAttribute("cellpadding", newValue) }
}
public var onmousedown: String? {
    get { getAttribute("onmousedown") }
    set { setAttribute("onmousedown", newValue) }
}
public var frameborder: String? {
    get { getAttribute("frameborder") }
    set { setAttribute("frameborder", newValue) }
}
public var marginwidth: String? {
    get { getAttribute("marginwidth") }
    set { setAttribute("marginwidth", newValue) }
}
public var cellspacing: String? {
    get { getAttribute("cellspacing") }
    set { setAttribute("cellspacing", newValue) }
}
public var placeholder: String? {
    get { getAttribute("placeholder") }
    set { setAttribute("placeholder", newValue) }
}
public var marginheight: String? {
    get { getAttribute("marginheight") }
    set { setAttribute("marginheight", newValue) }
}
public var acceptCharset: String? {
    get { getAttribute("accept-charset") }
    set { setAttribute("accept-charset", newValue) }
}
public var inner: String? {
    get { getAttribute("inner") }
    set { setAttribute("inner", newValue) }
}

// MARK: - Typealias

public typealias Closure = () -> Void

// MARK: - Element Functions

public func element(_ node: String, _ closure: Closure) {
    element(node, [:], closure)
}

public func element(_ node: String, _ attrs: [String: String?] = [:], _ closure: Closure) {
    // Save current state
    let originalAttrs = currentHTMLState.attributes
    let originalBuffer = currentHTMLState.buffer

    // Set new attributes
    currentHTMLState.attributes = attrs

    // Start tag
    appendToBuffer("<\(node)")

    // Run closure to set globals
    closure()

    // Merge attributes: globals override `attrs`
    var mergedAttrs = attrs
    let globalKeys = [
        "id", "class", "href", "src", "type", "value", "name", "style", "alt", "title",
        "rel", "rev", "for", "abbr", "cite", "data", "role", "tabindex", "onclick",
        "onload", "onchange", "onsubmit", "inner", /* add others as needed */
    ]
    for key in globalKeys {
        if let value = getAttribute(key) {
            mergedAttrs[key] = value
        }
    }

    // Append attributes to buffer
    for (key, value) in mergedAttrs {
        if let value = value {
            appendToBuffer(" \(key)=\"\(value.replacingOccurrences(of: "\"", with: "\\\""))\"")
        }
    }

    if let innerValue = inner {
        // Self-closing with inner text
        appendToBuffer(">\(innerValue)</\(node)>")
    } else {
        // Open tag
        appendToBuffer(">")
        // Run closure to render children
        closure()
        // Close tag
        appendToBuffer("</\(node)>")
    }

    // Restore outer scope
    currentHTMLState.attributes = originalAttrs
    currentHTMLState.buffer = originalBuffer
}

// MARK: - HTML Tag Functions

public func html(_ closure: Closure) { element("html", closure) }
public func head(_ closure: Closure) { element("head", closure) }
public func body(_ closure: Closure) { element("body", closure) }
public func div(_ closure: Closure) { element("div", closure) }
public func span(_ closure: Closure) { element("span", closure) }
public func p(_ closure: Closure) { element("p", closure) }
public func a(_ closure: Closure) { element("a", closure) }
public func img(_ closure: Closure) { element("img", closure) }
public func br(_ closure: Closure) { element("br", closure) }
public func hr(_ closure: Closure) { element("hr", closure) }
public func h1(_ closure: Closure) { element("h1", closure) }
public func h2(_ closure: Closure) { element("h2", closure) }
public func h3(_ closure: Closure) { element("h3", closure) }
public func h4(_ closure: Closure) { element("h4", closure) }
public func h5(_ closure: Closure) { element("h5", closure) }
public func h6(_ closure: Closure) { element("h6", closure) }
public func ul(_ closure: Closure) { element("ul", closure) }
public func ol(_ closure: Closure) { element("ol", closure) }
public func li(_ closure: Closure) { element("li", closure) }
public func table(_ closure: Closure) { element("table", closure) }
public func tr(_ closure: Closure) { element("tr", closure) }
public func td(_ closure: Closure) { element("td", closure) }
public func th(_ closure: Closure) { element("th", closure) }
public func thead(_ closure: Closure) { element("thead", closure) }
public func tbody(_ closure: Closure) { element("tbody", closure) }
public func tfoot(_ closure: Closure) { element("tfoot", closure) }
public func form(_ closure: Closure) { element("form", closure) }
public func input(_ closure: Closure) { element("input", closure) }
public func button(_ closure: Closure) { element("button", closure) }
public func fieldset(_ closure: Closure) { element("fieldset", closure) }
public func script(_ closure: Closure) { element("script", closure) }
public func style(_ closure: Closure) { element("style", closure) }
public func center(_ closure: Closure) { element("center", closure) }

// Special
public func stylesheet(_ closure: Closure) {
    element("link", ["rel": "stylesheet", "type": "text/css"], closure)
}

public func javascript(_ closure: Closure) {
    element("script", ["type": "text/javascript"], closure)
}

// Collection overloads
public func ul<T: Sequence>(_ collection: T, _ closure: @escaping (T.Element) -> Void) {
    element("ul") {
        for item in collection {
            closure(item)
        }
    }
}

public func table<T: Sequence>(_ collection: T, _ closure: @escaping (T.Element) -> Void) {
    element("table") {
        for item in collection {
            closure(item)
        }
    }
}

public func tbody<T: Sequence>(_ collection: T, _ closure: @escaping (T.Element) -> Void) {
    element("tbody") {
        for item in collection {
            closure(item)
        }
    }
}

// MARK: - Scopes DSL Entry Point

public func scopes(_ scope: @escaping Closure) -> ((HttpRequest) -> HttpResponse) {
    return { _ in
        // Reset buffer
        currentHTMLState.buffer = ""
        currentHTMLState.attributes = [:]

        // Run the DSL
        scope()

        // Final HTML
        let html = "<!DOCTYPE html>" + currentHTMLState.buffer
        return .raw(
            200, "OK", ["Content-Type": "text/html"],
            { try? $0.write([UInt8](html.utf8)) }
        )
    }
}
