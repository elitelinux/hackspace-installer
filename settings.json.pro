/*
  This file must be valid JSON. But comments are allowed

  Please edit settings.json, not settings.json.template
*/
{
  // Name your instance!
  "title": "My awesome Etherpad site",

  //Ip and port which etherpad should bind at
  "ip": "0.0.0.0",
  "port" : 9001,

  //The Type of the database. You can choose between dirty, postgres, sqlite and mysql
  "dbType" : "mysql",
  "dbSettings" : {
                    "user"    : "root", 
                    "host"    : "localhost", 
                    "password": "", 
                    "database": "store"
                  },

  //the default text of a pad
  "defaultPadText" : "Welcome to my AWESOME site!\n\nThis pad text is synchronized as you type, so that everyone viewing this page sees the same text. This allows you to collaborate seamlessly on documents!\n\nGet involved with Etherpad at http:\/\/etherpad.org\n",

  /* Users must have a session to access pads. This effectively allows only group pads to be accessed. */
  "requireSession" : false,

  /* Users may edit pads but not create new ones. Pad creation is only via the API. This applies both to group pads and regular pads. */
  "editOnly" : false,

  /* if true, all css & js will be minified before sending to the client. This will improve the loading performance massivly, 
     but makes it impossible to debug the javascript/css */
  "minify" : true,

  /* How long may clients use served javascript code (in seconds)? Without versioning this
     may cause problems during deployment. Set to 0 to disable caching */
  "maxAge" : 21600, // 60 * 60 * 6 = 6 hours

  /* This is the path to the Abiword executable. Setting it to null, disables abiword.
     Abiword is needed to enable the import/export of pads*/  
  "abiword" : "/usr/bin/abiword",

  /* This setting is used if you require authentication of all users.
     Note: /admin always requires authentication. */
  "requireAuthentication": false,

  /* Require authorization by a module, or a user with is_admin set, see below. */
  "requireAuthorization": false,

  /* Users for basic authentication. is_admin = true gives access to /admin.
     If you do not uncomment this, /admin will not be available! */
  "users": {
    "admin": {
      "password": "S3cRet##1",
      "is_admin": true
    }
  },

  /* The log level we are using, can be: DEBUG, INFO, WARN, ERROR */
  "loglevel": "ERROR",

  /* Google Analytics plugin settings */
  "ep_googleanalytics":{
    "gaCode":"UA-2387498"
  } 
}
