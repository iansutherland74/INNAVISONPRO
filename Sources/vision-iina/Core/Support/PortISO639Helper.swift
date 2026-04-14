import Foundation

enum ISO639Helper {

    struct Language {
        let code: String
        let name: [String]

        var description: String {
            "\(name[0]) (\(code))"
        }
    }

    static let descriptionRegex = Regex("^.+?\\(([a-z]{2,3})\\)$")

    static let languages: [Language] = {
        var result: [Language] = []
        for (code, value) in dictionary {
            let names = value.split(separator: ";").map { String($0) }
            result.append(Language(code: code, name: names))
        }
        // Sort by description, ascending alpha order.
        result.sort { $0.description.localizedCompare($1.description) == .orderedAscending }
        return result
    }()

    static let dictionary: [String: String] = {
        // Search across likely runtime bundles so tests and app runs both resolve resource loading.
        let candidateBundles: [Bundle] = [
            Bundle.main,
            Bundle(for: BundleMarker.self)
        ] + Bundle.allBundles

        for bundle in candidateBundles {
            guard let url = bundle.url(forResource: "ISO639", withExtension: "strings") else { continue }
            if let dict = NSDictionary(contentsOf: url) as? [String: String] {
                return dict
            }
        }

        return [:]
    }()
}

private final class BundleMarker {
}
