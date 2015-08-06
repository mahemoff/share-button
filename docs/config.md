You can pass an options object when you call `Share` on an element to make things a little more flexible.

Passing configuration options:

```js
config = {
    networks: {
        facebook: {
            app_id: '12345'
        }
    }
}

var share = new Share('.share-button', config);
```

All options:
```js
config = {
  protocol:    // the protocol you'd prefer to use. [Default: your current protocol]
  url:         // the url you'd like to share. [Default: `window.location.href`]
  title:       // title to be shared alongside your link [Default: See below in defaults section]
  description: // text to be shared alongside your link, [Default: See below in defaults section]
  image:       // image to be shared [Default: See below in defaults section]
  ui: {
    flyout:            // change the flyout direction of the shares. chose from `top left`, `top center`, `top right`, `bottom left`, `bottom right`, `bottom center`, `middle left`, or `middle right` [Default: `top center`]
    buttonText:        // change the text of the button, [Default: `Share`]
    namespace:         // prefix for all share button classes, [Default: 'sb-']
    networkOrder:      // order the networks appear once the button is clicked (array of strings) [Default: order of networks below]
    collision:         // toggles weather collision detection is on or off [Default: false]
  },
  networks: {
    googlePlus: {
      enabled: // Enable Google+. [Default: true]
      url:     // the url you'd like to share to Google+ [Default: config.url]
    },
    twitter: {
      enabled: // Enable Twitter. [Default: true]
      url:     // the url you'd like to share to Twitter [Default: config.url]
      description:    // text to be shared alongside your link to Twitter [Default: config.description]
    },
    facebook: {
      enabled: // Enable Facebook. [Default: true]
      loadSdk: // Load the FB SDK. If false, it will default to Facebook's sharer.php implementation.
                // NOTE: This will disable the ability to dynamically set values and rely directly on applicable Open Graph tags.
                // [Default: true]
      url: // the url you'd like to share to Facebook [Default: config.url]
      appId: // Facebook app id for tracking shares. if provided, will use the facebook API
      title: // title to be shared alongside your link to Facebook [Default: config.title]
      caption: // caption to be shared alongside your link to Facebook [Default: null]
      description:    // text to be shared alongside your link to Facebook [Default: config.description]
      image: // image to be shared to Facebook [Default: config.image]
    },
    pinterest: {
      enabled: // Enable Pinterest. [Default: true]
      url:     // the url you'd like to share to Pinterest [Default: config.url]
      image:   // image to be shared to Pinterest [Default: config.image]
      description:    // text to be shared alongside your link to Pinterest [Default: config.description]
    },
    reddit: {
      enabled: // Enable Reddit. [Default: true]
      url:     // the url you'd like to post to Reddit [Default: config.url]
      title:   // title you'd like for your reddit post [Default: config.title]
    },
    linkedin: {
      enabled:     // Enable Linkedin. [Default: true]
      url:         // the url you'd like to share to Linkedin [Default: config.url]
      title:       // title to be shared alongside your link to Linkedin [Default: config.title]
      description: // text to be shared alongside your link to Linkedin [Default: config.description]
    },
    whatsapp: {
      enabled:     // Enable Whatsapp (mobile only). [Default: true]
      description: // text to be shared alongside your link to Whatsapp [Default: config.description]
      url:         // the url you'd like to share to Whatsapp [Default: config.url]
    },
    email: {
      enabled: // Enable Email. [Default: true]
      title:     // the subject of the email [Default: config.title]
      description:    // The body of the email [Default: config.description]
    }
  }
}
```

## Defaults

The follow logic is used to populate default values for some of the config keys above:

* *title* - The first defined, non-null value out of (in order):
  * meta tag name='og:title' content attribute value
  * meta tag name='twitter:title' content attribute value
  * document's title tag value

* *image* - the first defined, non-null value out of (in order):
  * meta tag name='og:image' content attribute value
  * meta tag name='twitter:image' content attribute value

* *description* - the first defined, non-null value out of (in order):
  * meta tag name='og:description' content attribute value
  * meta tag name='twitter:description' content attribute value
  * meta tag name='description' content attribute value
