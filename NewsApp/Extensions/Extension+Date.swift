

import Foundation

extension Date {
    func converDate() -> String{
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}
