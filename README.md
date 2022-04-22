
### PROJECT NOTES ###

Create routes

Create pages controller

Create homepage, about

Changing root route

# display public key for github
cat ~/.ssh/id_rsa.pub

# Building a Model
1st need migration
$ rails g migration create_articles


############ CRUD ###########

# Create entires in database table
Method 1
entry = Model.new(column1: "abc", column2: "xyz")
entry = Model.save

Method 2
entry = Model.create(column1: "abc", column2: "xyz")

Model.all

# Update entry in database table
Step 1
Select the row
rowEntry = Model.find(id)
rowEntry.colum = "efgh"
rowEntry.save

# Destory entry from database table
Select the row/entry
delEntry = Model.find(id)
delEntry.destroy

############ MODEL VALIDATION ###########

in your_model.rb

create ModelName < ActiveRecord::Base
	validates :columName, presence: true


end

