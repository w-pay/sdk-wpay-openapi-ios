import UIKit

/*
 Mimics the functionality of JSONValueTransformer.importDateFormatter for consistency
 with other JSON parsing.

 Can be used if the Open API library doesn't automatically parse/format a Date for us.
*/
func createFormatter() -> DateFormatter {
	let formatter = DateFormatter()
	formatter.locale = Locale(identifier: "en_US_POSIX")
	formatter.dateFormat = "yyyy-MM-dd'T'HHmmssZZZ"

	return formatter
}

func dateFromString(_ date: String?) -> Date? {
	guard let theDate = date else {
		return nil
	}

	return createFormatter().date(from: theDate)
}

func dateToString(_ date: Date?) -> String? {
	guard let theDate = date else {
		return nil
	}

	return createFormatter().string(from: theDate)
}