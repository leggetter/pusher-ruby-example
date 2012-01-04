# Simple example of using Pusher with Ruby

To get working simply:

1. Download these source files/clone the repo
2. gem install sinatra
3. gem install pusher
4. [Sign up for Pusher](http://pusher.com/signup)
5. `mv src/config.example.rb src/config.rb`
6. Replace the `YOUR_` variable values with your Pusher App credentials
7. Start the Sinatra app by running `ruby -rubygems myapp.rb`

Navigate to <http://localhost:4567/index.html>

* Click the `Trigger` button to trigger an event.
* Check the `Exclude me from event message` checkbox and click the `Trigger` button. The event will be triggered but you will not receive the event. For more information see [Excluding Recipients](http://pusher.com/docs/publisher_api_guide/publisher_excluding_recipients).