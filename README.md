# Spanner ActiveRecord Example Application

This repository contains a simple example application for using ActiveRecord with Google Cloud Spanner.
The application uses the open source ActiveRecord adapter for Spanner that can be found here:
https://github.com/googleapis/ruby-spanner-activerecord

## Running the Application

The sample will automatically start a Spanner Emulator in a docker container and execute the sample
against that emulator. The emulator will automatically be stopped when the application finishes.
You must have Docker installed on your system in order to be able to run the sample application.

Run the application with the command from the root of the project.

```bash
bundle exec rake run
```

See https://medium.com/p/7c7f2c049a02 for more information on this sample application.
