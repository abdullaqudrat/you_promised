class Promise < ApplicationRecord
    validates_presence_of :body, :status
end
