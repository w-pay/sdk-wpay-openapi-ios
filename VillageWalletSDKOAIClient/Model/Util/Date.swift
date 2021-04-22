import UIKit

struct DateUtils {
	/*
	 Mimics the functionality of JSONValueTransformer.importDateFormatter for consistency
	 with other JSON parsing.

	 Can be used if the Open API library doesn't automatically parse/format a Date for us.
	*/
	private static var dateFormatter: DateFormatter {
		let formatter = DateFormatter()
		formatter.locale = Locale(identifier: "en_US_POSIX")
		formatter.dateFormat = "yyyy-MM-dd'T'HHmmssZZZ"

		return formatter
	}

	static func dateFromString(_ date: String?) -> Date? {
		guard let theDate = date else {
			return nil
		}

		return dateFormatter.date(from: theDate)
	}

	static func dateToString(_ date: Date?) -> String? {
		guard let theDate = date else {
			return nil
		}

		return dateFormatter.string(from: theDate)
	}
}
