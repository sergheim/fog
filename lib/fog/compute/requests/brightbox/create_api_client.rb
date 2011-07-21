module Fog
  module Compute
    class Brightbox
      class Real

        def create_api_client(options = {})
          request(
            :expects  => [201],
            :method   => 'POST',
            :path     => "/1.0/api_clients",
            :headers  => {"Content-Type" => "application/json"},
            :body     => MultiJson.encode(options)
          )
        end

      end
    end
  end
end