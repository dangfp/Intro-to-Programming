def fill_correct_contacts(contact_data, contacts)
	contacts_names = contacts.keys
	contact_data.each do |data|
		email_name = data[0].split('@').first
		contacts_names.each do |name|
			if name.downcase.include?(email_name)
				contacts[name][:email_name] = data[0]
				contacts[name][:address] = data[1]
				contacts[name][:phone] = data[2]
			end
		end
	end

	puts contacts
end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

fill_correct_contacts(contact_data, contacts)