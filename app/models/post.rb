class Post < ActiveRecord::Base
    validations :title, presence: true 
    validations :content, :length, minimum: { is: 100 }
end
