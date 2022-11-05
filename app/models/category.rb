class Category < ApplicationRecord
  self.inheritance_column = :_type_disabled
end
