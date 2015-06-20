class Question < ActiveRecord::Base
    title:string, body:text, resolved: boolean, has_many :answers
end
