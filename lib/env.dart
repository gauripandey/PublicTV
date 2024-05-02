// ignore_for_file: prefer_single_quotes, lines_longer_than_80_chars final
Map<String, dynamic> environment = {
  "multiSiteConfigs": [
    {
      "configFolder": "vi_store",
      "serverConfig": {
        "url": "https://publictv.in", "type": "wordpress"},
      "defaultDarkTheme": true,
      "enableRemoteConfigFirebase": true,
      "enableFirebaseAnalytics": true,
      "loginSMSConstants": {
        "dialCodeDefault": "+84",
        "nameDefault": "Vietnam",
        "countryCodeDefault": "VN"
      },
      "name": "Public TV Kannada",
      "icon":"https://publictv.in/wp-content/uploads/2024/02/Smart-Television-Logo-1.svg",
      "languageCode": "en",
      "currencyCode": "USD"
    },
    {
      "configFolder": "us_store",
      "serverConfig": {
        "url": "https://english.publictv.in", "type": "wordpress"},
      "name": "Public TV English",
      "icon":
      "https://publictv.in/wp-content/uploads/2024/02/Smart-Television-Logo.svg",
      "languageCode": "en",
      "currencyCode": "USD"
    },

  ],


  "serverConfig": {"url": "https://publictv.in", "type": "wordpress"},
  "defaultDarkTheme": true,
  "enableRemoteConfigFirebase": false,
  "enableFirebaseAnalytics": true,
  "loginSMSConstants": {
    "dialCodeDefault": "+84",
    "nameDefault": "Vietnam",
    "countryCodeDefault": "VN"
  },

  "phoneNumberConfig": {
    "enable": false,
    "countryCodeDefault": "US",
    "dialCodeDefault": "+1",
    "useInternationalFormat": true,
    "selectorFlagAsPrefixIcon": true,
    "showCountryFlag": true,
    "customCountryList": [],
    "selectorType": "BOTTOM_SHEET"
  },
  "appRatingConfig": {
    "showOnOpen": false,
    "android": "com.phonegap.publictv",
    "ios": "1469772800",
    "minDays": 7,
    "minLaunches": 10,
    "remindDays": 7,
    "remindLaunches": 10
  },
  "advanceConfig": {
    "EnableWooCommerceWholesalePrices": false,
    "AlwaysShowTabBar": true,
    "isMultiLanguages": false,
    "SupportPageUrl": "https://publictv.in/contact-us/",
    "OrderNotesLinkSupport": false,
    "HideEmptyTags": true,
    "AjaxSearchURL": "",
    "isCaching": false,
    "OrderNotesWithPrivateNote": true,
    "EnableWOOCSCurrencySwitcher": false,
    "AutoDetectLanguage": false,
    "showRequestNotification": true,
    "IsRequiredSiteSelection": false,
    "ShowBottomCornerCart": true,
    "DetailedBlogLayout": "simpleType",
    "MaxQueryRadiusDistance": 10,
    "DownloadPageUrl": "https://mstore.io/#download",
    "AlwaysClearWebViewCache": false,
    "EnableDigitsMobileLogin": false,
    "EnableVersionCheck": true,
    "enableProductBackdrop": false,
    "kIsResizeImage": true,
    "WebViewScript": "",
    "PrivacyPoliciesPageUrlOrId": "https://publictv.in/privacypolicy/",
    "EnableMembershipUltimate": false,
    "smsLoginAsDefault": false,
    "EnableNewSMSLogin": false,
    "HideEmptyCategories": true,
    "categoryImageMenu": true,
    "EnableDigitsMobileFirebase": false,
    "SocialConnectUrl": [
      {
        "name": "Facebook",
        "icon": "assets/icons/logins/facebook.png",
        "url": "https://www.facebook.com/inspireui"
      },
      {
        "name": "Instagram",
        "icon": "assets/icons/logins/instagram.png",
        "url": "https://www.instagram.com/inspireui9/"
      }
    ],

    "versionCheck": {"enable": false},
    "EnableDeliveryDateOnCheckout": true,
    "RatioProductImage": 1.2,
    "inAppWebView": true,
    "pinnedProductTags": [],
    "EnablePaidMembershipPro": false,
    "DefaultLanguage": "en",
    "EnableBottomAddToCart": false,
    "inAppUpdateForAndroid": {"enable": true, "typeUpdate": "immediate"},
    "GridCount": 4,
    "AlwaysRefreshBlog": true,
    "EnableDigitsMobileWhatsApp": false,
    "EnableFirebase": true,
    "categoryConfig": {
      "enableLargeCategories": true,
      "deepLevel": 3},
    "OnBoardOnlyShowFirstTime": false,
    "MinQueryRadiusDistance": 1,
    "httpCache": true
  },
  "defaultDrawer": {
    "logo": "assets/images/logo.png",
    "items": [
      {"show": true, "type": "home"},
      {"show": true, "type": "categories"},
      {"show": false, "type": "profile"},
      {"show": true, "type": "login"},
      {"show": true, "type": "category"}
    ]
  },
  "defaultSettings": [
    "wishlist",
    "notifications",
    "language",
    "darkTheme",
  ],
  "loginSetting": {
    "facebookAppId": "430258564493822",
    "requirePhoneNumberWhenRegister": false,
    "facebookLoginProtocolScheme": "fb430258564493822",
    "smsLoginAsDefault": false,
    "showPhoneNumberWhenRegister": false,
    "isResetPasswordSupported": false,
    "IsRequiredLogin": false,
    "facebookClientToken": ""
  },
  "oneSignalKey": {
    "enable": true,
    "appID": "8b45b6db-7421-45e1-85aa-75e597f62714"
  },
  "onBoardingConfig": {
    "data": [
      {
        "image": "assets/images/fogg-delivery-1.png",
        "title": "Welcome to Public TV",
        "desc": "Fluxstore is on the way to serve you. "
      },
      {
        "image": "assets/images/fogg-uploading-1.png",
        "title": "Connect Surrounding World",
        "desc":
        "See all things happening around you just by a click in your phone. Fast, convenient and clean."
      },
      {
        "image": "assets/images/fogg-order-completed.png",
        "title": "Let's Get Started",
        "desc": "Waiting no more, let's see what we get!"
      }
    ],
    "autoCropImageByDesign": false,
    "isOnlyShowOnFirstTime": false,
    "version": 1,
    "enableOnBoarding": false,
    "showLanguage": false
  },
  "adConfig": {
    "ads": [
      {
        "iosId": "ca-app-pub-9639279280222695/2526908602",
        "waitingTimeToDisplay": 2,
        "provider": "google",
        "showOnScreens": ["home", "search"],
        "hideOnScreens": [],
        "type": "banner",
        "androidId": "ca-app-pub-9639279280222695/1009530034"
      },
      {
        "iosId": "ca-app-pub-9639279280222695/9447540179",
        "waitingTimeToDisplay": 0,
        "showOnScreens": ["category"],
        "provider": "google",
        "hideOnScreens": [],
        "type": "banner",
        "androidId": "ca-app-pub-9639279280222695/4914731395"
      },
      {
        "iosId": "ca-app-pub-9639279280222695/6138850556",
        "waitingTimeToDisplay": 0,
        "showOnScreens": [ "home-search", "detail-blog", "notify","category-search", "page", "html", "static","postScreen", "dynamic"],
        "provider": "google",
        "hideOnScreens": [],
        "type": "banner",
        "androidId": "ca-app-pub-9639279280222695/3024464023"
      },
      {
        "iosId": "ca-app-pub-9639279280222695/5699866851",
        "waitingTimeToDisplay": 0,
        "showOnScreens": [],
        "provider": "google",
        "hideOnScreens": [],
        "type": "banner",
        "androidId": "ca-app-pub-9639279280222695/3817272148"
      },
      // {
      //   "iosId": "ca-app-pub-3940256099942544/4411468910",
      //   "waitingTimeToDisplay": 5,
      //   "provider": "google",
      //   "showOnScreens": ["profile"],
      //   "hideOnScreens": [],
      //   "type": "interstitial",
      //   "androidId": "ca-app-pub-3940256099942544/4411468910"
      // },
      // {
      //   "iosId": "ca-app-pub-3940256099942544/1712485313",
      //   "waitingTimeToDisplay": 0,
      //   "provider": "google",
      //   "showOnScreens": ["cart"],
      //   "hideOnScreens": [],
      //   "type": "reward",
      //   "androidId": "ca-app-pub-3940256099942544/4411468910"
      // }
    ],
    "enable": true,
    "googleTestingId": [],
    "adMobAppIdIos": "ca-app-pub-9639279280222695~1023594982",
    "facebookTestingId": "",
    "adMobAppIdAndroid": ""
  },
  "firebaseDynamicLinkConfig": {
    "iOSAppStoreId": "1125391954",
    "androidPackageName": "com.phonegap.publictv",
    "isEnabled": true,
    "androidAppMinimumVersion": 2,
    "link": "https://publictv.page.link",
    "uriPrefix": "https://publictv.page.link",
    "shortDynamicLinkEnable": true,
    "iOSBundleId": "com.writemenmedia.publictv",
    "iOSAppMinimumVersion": "1.0.1"
  },
  "languagesInfo": [
    {
      "storeViewCode": "",
      "code": "en",
      "name": "English",
      "icon": "assets/images/country/gb.png",
      "text": "English"
    },
    {
      "storeViewCode": "",
      "code": "zh",
      "icon": "assets/images/country/zh.png",
      "name": "Chinese",
      "text": "Chinese"
    },
    {
      "storeViewCode": "hi",
      "code": "hi",
      "icon": "assets/images/country/in.png",
      "name": "Hindi",
      "text": "Hindi"
    },
    {
      "storeViewCode": "",
      "code": "es",
      "name": "Spanish",
      "icon": "assets/images/country/es.png",
      "text": "Spanish"
    },
    {
      "storeViewCode": "fr",
      "code": "fr",
      "icon": "assets/images/country/fr.png",
      "name": "French",
      "text": "French"
    },
    {
      "storeViewCode": "ar",
      "code": "ar",
      "icon": "assets/images/country/ar.png",
      "name": "Arabic",
      "text": "Arabic"
    },
    {
      "storeViewCode": "ru",
      "code": "ru",
      "icon": "assets/images/country/ru.png",
      "name": "Russian",
      "text": "Русский"
    },
    {
      "storeViewCode": "id",
      "code": "id",
      "icon": "assets/images/country/id.png",
      "name": "Indonesian",
      "text": "Indonesian"
    },
    {
      "storeViewCode": "",
      "code": "ja",
      "name": "Japanese",
      "icon": "assets/images/country/ja.png",
      "text": "Japanese"
    },
    {
      "storeViewCode": "ko",
      "code": "ko",
      "name": "Korean",
      "icon": "assets/images/country/ko.png",
      "text": "Korean"
    },
    {
      "storeViewCode": "",
      "code": "vi",
      "icon": "assets/images/country/vn.png",
      "name": "Vietnamese",
      "text": "Vietnam"
    },
    {
      "storeViewCode": "ro",
      "code": "ro",
      "name": "Romanian",
      "icon": "assets/images/country/ro.png",
      "text": "Romanian"
    },
    {
      "storeViewCode": "tr",
      "code": "tr",
      "name": "Turkish",
      "icon": "assets/images/country/tr.png",
      "text": "Turkish"
    },
    {
      "storeViewCode": "it",
      "code": "it",
      "name": "Italian",
      "icon": "assets/images/country/it.png",
      "text": "Italian"
    },
    {
      "storeViewCode": "de",
      "code": "de",
      "name": "German",
      "icon": "assets/images/country/de.png",
      "text": "German"
    },
    {
      "storeViewCode": "pt",
      "code": "pt",
      "icon": "assets/images/country/br.png",
      "name": "Portuguese",
      "text": "Portuguese"
    },
    {
      "storeViewCode": "hu",
      "code": "hu",
      "name": "Hungarian",
      "icon": "assets/images/country/hu.png",
      "text": "Hungarian"
    },
    {
      "storeViewCode": "he",
      "code": "he",
      "icon": "assets/images/country/he.png",
      "name": "Hebrew",
      "text": "Hebrew"
    },
    {
      "storeViewCode": "th",
      "code": "th",
      "icon": "assets/images/country/th.png",
      "name": "Thai",
      "text": "Thai"
    },
    {
      "storeViewCode": "nl",
      "code": "nl",
      "icon": "assets/images/country/nl.png",
      "name": "Dutch",
      "text": "Dutch"
    },
    {
      "storeViewCode": "sr",
      "code": "sr",
      "name": "Serbian",
      "icon": "assets/images/country/sr.png",
      "text": "Serbian"
    },
    {
      "storeViewCode": "pl",
      "code": "pl",
      "icon": "assets/images/country/pl.png",
      "name": "Polish",
      "text": "Polish"
    },
    {
      "storeViewCode": "",
      "code": "fa",
      "name": "Persian",
      "icon": "assets/images/country/fa.png",
      "text": "Persian"
    },
    {
      "storeViewCode": "",
      "code": "uk",
      "icon": "assets/images/country/uk.png",
      "name": "Ukrainian",
      "text": "Ukrainian"
    },
    {
      "storeViewCode": "",
      "code": "bn",
      "name": "Bengali",
      "icon": "assets/images/country/bn.png",
      "text": "Bengali"
    },
    {
      "storeViewCode": "",
      "code": "ta",
      "name": "Tamil",
      "icon": "assets/images/country/ta.png",
      "text": "Tamil"
    },
    {
      "storeViewCode": "",
      "code": "ku",
      "icon": "assets/images/country/ku.png",
      "name": "Kurdish",
      "text": "Kurdish"
    },
    {
      "storeViewCode": "cs",
      "code": "cs",
      "name": "Czech",
      "icon": "assets/images/country/cs.png",
      "text": "Czech"
    },
    {
      "storeViewCode": "",
      "code": "sv",
      "name": "Swedish",
      "icon": "assets/images/country/sv.png",
      "text": "Swedish"
    },
    {
      "storeViewCode": "",
      "code": "fi",
      "name": "Finland",
      "icon": "assets/images/country/fi.png",
      "text": "Finland"
    },
    {
      "storeViewCode": "",
      "code": "el",
      "icon": "assets/images/country/el.png",
      "name": "Greek",
      "text": "Greek"
    },
    {
      "storeViewCode": "",
      "code": "km",
      "name": "Khmer",
      "icon": "assets/images/country/km.png",
      "text": "Khmer"
    },
    {
      "storeViewCode": "",
      "code": "kn",
      "icon": "assets/images/country/kn.png",
      "name": "Kannada",
      "text": "Kannada"
    },
    {
      "storeViewCode": "",
      "code": "mr",
      "name": "Marathi",
      "icon": "assets/images/country/mr.jpeg",
      "text": "Marathi"
    },
    {
      "storeViewCode": "",
      "code": "ms",
      "name": "Malay",
      "icon": "assets/images/country/ms.jpeg",
      "text": "Malay"
    },
    {
      "storeViewCode": "",
      "code": "bs",
      "icon": "assets/images/country/bs.png",
      "name": "Bosnian",
      "text": "Bosnian"
    },
    {
      "storeViewCode": "",
      "code": "lo",
      "name": "Lao",
      "icon": "assets/images/country/lo.png",
      "text": "Lao"
    }
  ],
  "shopifyPaymentConfig": {
    "shopName": "FluxStore",
    "countryCode": "US",
    "productionMode": false,
    "paymentCardConfig": {
      "enable": true,
      "serverEndpoint": "https://test-stripe-nine.vercel.app"
    },
    "applePayConfig": {
      "enable": true,
      "merchantId": "merchant.com.inspireui.fluxstore"
    },
    "googlePayConfig": {
      "enable": true,
      "stripePublishableKey": "pk_test_O3awus9i5mA2wIX9a7pU3MSi00gZPcpJWX",
      "merchantId": "merchant.com.inspireui.fluxstore"
    }
  },
  "payTmConfig": {
    "merchantId": "your-merchant-id",
    "production": false,
    "paymentMethodId": "paytm",
    "enabled": true
  },
  "payStackConfig": {
    "paymentMethodId": "paystack",
    "publicKey": "pk_test_a1a37615c9ca90dead5dd84dedbb5e476b640a6f",
    "secretKey": "sk_test_d833fcaa6c02a61a9431d2026046c0517888a4a7",
    "supportedCurrencies": ["ZAR"],
    "enableMobileMoney": true,
    "production": false,
    "enabled": true
  },
  "flutterwaveConfig": {
    "paymentMethodId": "rave",
    "publicKey": "FLWPUBK_TEST-72b90e0734da8c9e43916adf63cd711e-X",
    "production": false,
    "enabled": true
  },
  "myFatoorahConfig": {
    "paymentMethodId": "myfatoorah_v2",
    "apiToken":
    "rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL",
    "accountCountry": "KW",
    "production": false,
    "enabled": false
  },
  "midtransConfig": {
    "paymentMethodId": "midtrans",
    "clientKey": "SB-Mid-client-he8W_FIlvugfA2RD",
    "enabled": true
  },
  "inAppPurchaseConfig": {
    "consumableProductIDs": ["com.inspireui.fluxstore.test"],
    "nonConsumableProductIDs": [],
    "subscriptionProductIDs": ["com.inspireui.fluxstore.subscription.test"],
    "enabled": false
  },
  "xenditConfig": {
    "paymentMethodId": "xendit",
    "secretApiKey":
    "xnd_development_4E9ql5zFiC1BBmhK2r7wr9mNYyyvjLs0fIal00tGuHEj1iEYCu7B7tCUudv3Xe",
    "enabled": true
  },
  "expressPayConfig": {
    "paymentMethodId": "shahbandrpay",
    "merchantKey": "b2be2ffc-c8b9-11ed-82a9-42eb4e39c8ae",
    "merchantPassword": "4a00a5fd3c63dd2b743c75746af6ffe2",
    "merchantId": "merchant.com.inspireui.mstore.flutter",
    "production": false,
    "enabled": true
  },
  "thaiPromptPayConfig": {
    "paymentMethodId": "thai-promptpay-easy",
    "enabled": true
  },
  "googleApiKey": {
    "android": "AIzaSyBI9kRUJ8JtVAT646YpAAsjNa8XvRM_Jl0",
    "ios": "AIzaSyBI9kRUJ8JtVAT646YpAAsjNa8XvRM_Jl0",
    "web": "AIzaSyBI9kRUJ8JtVAT646YpAAsjNa8XvRM_Jl0"
  },
  "blogDetail": {
    "showAuthorInfo": true,
    "showTextAdjustment": true,
    "showRelatedBlog": true,
    "showComment": false,
    "showHeart": true,
    "showSharing": true,
    "enableAudioSupport": false
  },
  "configChat": {
    "showOnScreens": ["profile"],
    "hideOnScreens": [],
    "EnableSmartChat": false,
    "version": "2"
  },
  "openAIConfig": {
    "enableChat": true,
    "supabaseUrl": "https://rtkrqvtslujdzjxhjocu.supabase.co",
    "supabaseAnonKey":
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0a3JxdnRzbHVqZHpqeGhqb2N1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzU5OTI5MzMsImV4cCI6MTk5MTU2ODkzM30.qKtfNHhL6AKqGsmDfjMq90bIWIWlnN3UVgnwcLF_vGY",
    "revenueAppleApiKey": "appl_XNtOUZPHwUzelbvwdSezFsMrNeT",
    "revenueGoogleApiKey": "goog_kpDTQdItiHkSrdjDdvLIwAdjOzG",
    "revenueProductsIos": ["gpt_3999_1y_1w0", "gpt_399_1m_1w0"],
    "revenueProductsAndroid": ["gpt_pro_v1"],
    "enableSubscription": false,
    "enableInputKey": false
  },
  "smartChat": [
    {
      "app": "firebase",
      "imageData":
      "https://trello.com/1/cards/611a38c89ebde41ec7cf10e2/attachments/611a392cceb1b534aa92a83e/previews/611a392dceb1b534aa92a84d/download",
      "description": "Realtime Chat"
    },
    {
      "app": "https://wa.me/849908854",
      "description": "WhatsApp",
      "iconData": "whatsapp"
    },
    {"app": "tel:8499999999", "description": "Call Us", "iconData": "phone"},
    {"app": "sms://8499999999", "description": "Send SMS", "iconData": "sms"},
    {
      "app": "https://tawk.to/chat/5d830419c22bdd393bb69888/default",
      "description": "Tawk Chat",
      "iconData": "whatsapp"
    },
    {
      "app": "http://m.me/inspireui",
      "description": "Facebook Chat",
      "iconData": "facebookMessenger"
    },
    {
      "app":
      "https://twitter.com/messages/compose?recipient_id=821597032011931648",
      "imageData":
      "https://trello.com/1/cards/611a38c89ebde41ec7cf10e2/attachments/611a38d026894f10dc1091c8/previews/611a38d126894f10dc1091d6/download",
      "description": "Twitter Chat"
    }
  ],
  "adminEmail": "admininspireui@gmail.com",
  "adminName": "InspireUI",
  "managerConfig": {
    "appLogo": "assets/images/app_icon_transparent.png",
    "appName": "FluxStore Admin",
    "enableDeliveryFeature": false
  },
  "loadingIcon": {"layout": "spinkit", "type": "doubleBounce"},

  "splashScreen": {
    "duration": 2000,
    "image": "",
    "animationName": "static",
    "enable": false,
    "type": "static"
  },
  "onBoardingData": [
    {
      "image": "assets/images/fogg-delivery-1.png",
      "title": "Welcome to Public TV",
      "desc": "PublicTV on the way to serve you. "
    },
    {
      "image": "assets/images/fogg-uploading-1.png",
      "title": "Connect Surrounding World",
      "desc":
      "See all things happening around you just by a click in your phone. Fast, convenient and clean."
    },
    {
      "image": "assets/images/fogg-order-completed.png",
      "title": "Let's Get Started",
      "desc": "Waiting no more, let's see what we get!"
    }
  ],
  "darkConfig": {
    "MainColor": "ffe60021",
    "logo":
    "https://i0.wp.com/publictv.in/wp-content/uploads/2023/04/cropped-fH1g6WnU-1.webp?fit=300%2C193&ssl=1"
  },
  "enableOnBoarding": false,
  "unsupportedLanguages": ["ku"],
  "notificationRequestScreen": {},
  "lightConfig": {
    "backgroundColor": "fffbfbfb",
    "MainColor": "ffe60021",
    "logo":
    "https://i0.wp.com/publictv.in/wp-content/uploads/2023/04/cropped-fH1g6WnU-1.webp?fit=300%2C193&ssl=1",
    "textColor": "ff212121",
    "secondaryColor": "ff212121"
  },
  "storeIdentifier": {
    "disable": true,
    "android": "com.inspireui.fluxstore",
    "ios": "1469772800"
  },

};
