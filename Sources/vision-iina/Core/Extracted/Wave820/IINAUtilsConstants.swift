// Wave820: extracted from JavascriptAPIUtils.swift
// Exec result dict keys, error codes, and file-chooser option keys

enum IINAExecResultKey: String, CaseIterable {
    case status = "status"
    case stdout = "stdout"
    case stderr = "stderr"
}

enum IINAUtilsErrorCode: Int, CaseIterable {
    case binaryNotFound = -1
    case runtime        = -2
}

enum IINAChooseFileOptionKey: String, CaseIterable {
    case chooseDir        = "chooseDir"
    case allowedFileTypes = "allowedFileTypes"
}
