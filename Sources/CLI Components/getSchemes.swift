/*
* ----------------------------------------------------------------------------
* "THE BEER-WARE LICENSE" (Revision 42):
* <g.litenstein@gmail.com> wrote this file. As long as you retain this notice you
* can do whatever you want with this stuff. If we meet some day, and you think
* this stuff is worth it, you can buy me a beer in return., Gregorio Litenstein.
* ----------------------------------------------------------------------------
*/

import Foundation
import SwiftCLI

class GetSchemes: Command {
	
	let name = "getSchemes"
	let signature = ""
	let shortDescription = "Returns a list of all known URI schemes, accompanied by their default handler."
	
	func execute(arguments: CommandArguments) throws  {
		
		if let output = copyDictionaryAsString(LSWrappers.Schemes.copySchemesAndHandlers()?.sorted(by: { $0.0 < $1.0 })) {
			print(output)
		}
		else { throw CLI.Error("SwiftDefaultApps ERROR: Couldn't generate list of URI Schemes.") }
		
	}
}
