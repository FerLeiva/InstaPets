class PhotoValidator < ActiveModel::Validator
	def validate(object)
		for badword in BADWORDS do
			if object.description.downcase.include?(badword.downcase)
				object.errors.add(:description, "The word '" + badword + "' it's not allowed")
			end
		end
	end
end