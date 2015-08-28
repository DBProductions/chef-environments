# kitchen-nodejs

Simple KitchenCI environment to run a NodeJS application.  
The `git` and `nodejs` cookbook are used in this example.

There is a simple recipe what let you define your NodeJS application settings.  
Define where the application is located `appdir` and the file which should be started `appfile`.  
Resource can be `file` or `repository` to clone a respository or copy the files from the app folder.  
Then the dependencies get installed and the `appfile` gets started with pm2.

## Defaults

Where the application is located and which script be started are defined as follows.

```
default['nodejsenv']['appdir'] = '/opt/nodejsapp'
default['nodejsenv']['appfile'] = 'server.js'
default['nodejsenv']['resource'] = 'file'
default['nodejsenv']['repository'] = nil
default['nodejsenv']['branch'] = nil
```

## Test

* Bats
* Serverspec

## Feedback
Star this repo if you found it useful. Use the github issue tracker to give feedback on this repo.
