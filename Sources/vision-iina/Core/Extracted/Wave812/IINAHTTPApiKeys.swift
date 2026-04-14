// Wave812: extracted from JavascriptAPIHttp.swift
// HTTP method identifiers and request/response option dict keys

enum IINAHTTPMethodName: String, CaseIterable {
    case get    = "GET"
    case post   = "POST"
    case put    = "PUT"
    case patch  = "PATCH"
    case delete = "DELETE"
}

enum IINAHTTPResponseKey: String, CaseIterable {
    case statusCode = "statusCode"
    case reason     = "reason"
    case data       = "data"
    case text       = "text"
}

enum IINAHTTPRequestOptionKey: String, CaseIterable {
    case method  = "method"
    case params  = "params"
    case headers = "headers"
    case data    = "data"
}
