require 'roar/representer/json/hal'

module ProductRepresenter
  include Roar::Representer::JSON
  include Roar::Representer::Feature::Hypermedia
  include Grape::Roar::Representer

  property :title
  property :id

  link :self do
    "/article/#{id}"
  end
end
