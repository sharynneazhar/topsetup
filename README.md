# Top Setup

Browse top setups from around the world or show off your own setup!

#### Setup

Run the following commands if necessary:

* `rake db:migrate` to prepare database

* `rake db:seed` to seed required data


#### Troubleshooting

> PG::ConnectionBad - could not connect to server: Connection refused
  Is the server running on host "localhost" ...

Run the following:  `brew services restart postgresql`

> New styles are not updated when deployed

Run the following: `rake assets:precompile`
