private
performTest
	^ self world becomeActiveDuring: [
		self hand becomeActiveDuring: [
			self preserveTopWindowDuring: [
				self replaceUIManagerWith: GSTestUIManager new during: [
					self protectWorkingCopyRegistriesDuring: [
						self setPreferencesDuring: [
							self easeDebuggingDuring: [
								super performTest]]]]]]]