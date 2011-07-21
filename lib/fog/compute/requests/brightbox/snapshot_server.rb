module Fog
  module Compute
    class Brightbox
      class Real

        def snapshot_server(identifier, options = {})
          return nil if identifier.nil? || identifier == ""
          request(
            :expects  => [202],
            :method   => 'POST',
            :path     => "/1.0/servers/#{identifier}/snapshot",
            :headers  => {"Content-Type" => "application/json"},
            :body     => MultiJson.encode(options)
          )
        end

      end
    end
  end
end