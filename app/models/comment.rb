class Comment < ApplicationRecord
  belongs_to :article , polymorphic: true
  belongs_to :photo , polymorphic: true
end
