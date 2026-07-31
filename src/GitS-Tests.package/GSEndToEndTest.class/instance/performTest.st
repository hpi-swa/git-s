private
performTest
	^ self world becomeActiveDuring: [
		self hand becomeActiveDuring: [
			self world noDisplayDuring: [
				self preserveTopWindowDuring: [
					self replaceUIManagerWith: GSTestUIManager new during: [
						self protectWorkingCopyRegistriesDuring: [
							self setPreferencesDuring: [
								self easeDebuggingDuring: [
									self preTest.
									super performTest]]]]]]]]