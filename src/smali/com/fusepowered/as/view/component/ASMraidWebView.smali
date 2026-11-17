.class public Lcom/fusepowered/as/view/component/ASMraidWebView;
.super Lcom/fusepowered/as/view/component/ASWebView;
.source "ASMraidWebView.java"


# static fields
.field private static final MRAID:Ljava/lang/String; = "<script>var mraid = {\n\teventsListeners: {\n\t\tready: [],\n    error: [],\n    stateChange: [],\n\t\tviewableChange: [],\n\t\tsizeChange: []\n  },\n\n\tviewable: false,\n\n  defaultPosition: undefined,\n\n\tresizeProperties: {\n\t\twidth: undefined,\n\t\theight: undefined,\n\t\toffsetX: undefined,\n\t\toffsetY: undefined,\n\t\tcustomClosePosition: \'top-right\',\n\t\tallowOffscreen: true\n\t},\n\n\texpandProperties: {\n    width: undefined,\n\t\theight: undefined,\n\t\tuseCustomClose: false,\n\t\tisModal: true\n\t},\n\n\torientationProperties: {\n    allowOrientationChange: true,\n\t\tforceOrientation: \'none\'\n  },\n\n\tsupports: {\n    sms: false,\n    tel: false,\n    calendar: false,\n    storePicture: true,\n    inlineVideo: false\n  },\n\n  getState: function() { return mraidBridge.getState(); }, \n\n  getVersion: function() { return mraidBridge.getVersion(); },\n\n  addEventListener: function(event, listener) { \n    for(var eventListener in this.eventsListeners[event]) {\n      if (eventListener === listener) return;\n    }\n    this.eventsListeners[event].push(listener);\n\t\tconsole.log(\'adding \' + event + \' listener\');\n  },\n\n  removeEventListener: function(event, listener) {\n\t\tif(listener == undefined)\n\t\t\tthis.eventsListeners[event] = [];\n\t\telse {\n      var eventListeners = this.eventsListeners[event]\n      var i = eventListeners.indexOf(listener)\n      if (i !== -1) {\n        eventListeners.splice(i,1);\n      }\n\t\t}\n  },\n\n  fireEvent: function(event) {\n    console.log(\'firing event: \' + event);\n    var eventListeners = this.eventsListeners[event];\n    var args = Array.prototype.slice.call(arguments);\n    args.shift();\n\t\tif(event == \'viewableChange\')\n\t\t\tthis.viewable = args[0];\n\n    if(eventListeners) {\n      for (var i = 0; i < eventListeners.length; i++) {\n        eventListeners[i].apply(null, args);\n      }\n    }\n  }, \n\n  createCalendarEvent: function(calendarEvent) { mraidBridge.createCalendarEvent(JSON.stringify(calendarEvent)); },\n\n  getPlacementType: function() { return mraidBridge.getPlacementType(); },\n\n  storePicture: function(url) { mraidBridge.storePicture(url); },\n\n  supports: function(feature) { \n    return this.supports[feature];\n  },\n\n  setSupports: function(sms, tel, calendar, storePicture, inlineVideo) {\n    this.supports.sms = sms;\n    this.supports.tel = tel;\n    this.supports.calendar = calendar;\n    this.supports.storePicture = storePicture;\n    this.supports.inlineVideo = inlineVideo;\n  },\n\n  fireReady: function() {\n    this.viewable = true;\n    this.fireEvent(\'ready\');\n  },\n\n  isViewable: function() { return this.viewable; },\n\n  close: function() { mraidBridge.close(); },\n\n  getScreenSize: function() { return JSON.parse(mraidBridge.getScreenSize()); },\n\n  getMaxSize: function() { return JSON.parse(mraidBridge.getMaxSize()); },\n\n  getCurrentPosition: function() { \n\t\tvar position = JSON.parse(mraidBridge.getCurrentPosition());\n    if(this.defaultPosition == undefined)\n\t\t\tthis.defaultPosition = position;\n\t\treturn position;\n\t},\n\n  getDefaultPosition: function() { return this.defaultPosition; },\t\n\n\tgetResizeProperties: function() { return this.resizeProperties; },\n\n\tsetResizeProperties: function(properties) {\n    if(properties.width != undefined)\tthis.resizeProperties.width = properties.width;\n    if(properties.height != undefined)\tthis.resizeProperties.height = properties.height;\n    if(properties.offsetX != undefined)\tthis.resizeProperties.offsetX = properties.offsetX;\n    if(properties.offsetY != undefined)\tthis.resizeProperties.offsetY = properties.offsetY;\n    if(properties.customClosePosition != undefined)\t{\n\t\t\tif(properties.customClosePosition == \'top-left\' ||\n\t\t\t  properties.customClosePosition == \'center\' ||\n\t\t\t  properties.customClosePosition == \'bottom-left\' ||\n\t\t\t  properties.customClosePosition == \'bottom-right\' ||\n\t\t\t  properties.customClosePosition == \'top-center\' ||\n\t\t\t  properties.customClosePosition == \'bottom-center\')\n\t\t\t  this.resizeProperties.customClosePosition = properties.customClosePosition;\n\t\t\telse\n\t\t\t\tthis.resizeProperties.customClosePosition = \'top-right\';\n\t\t}\n    if(properties.allowOffscreen != undefined)\tthis.resizeProperties.allowOffscreen = properties.allowOffscreen;\n\t},\n\n\tresize: function() { mraidBridge.resize(JSON.stringify(this.resizeProperties)); },\n\n\tgetExpandProperties: function() { return this.expandProperties; }, \n\n\tsetExpandProperties: function(properties) {\n    if(properties.width != undefined)\tthis.expandProperties.width = properties.width;\n    if(properties.height != undefined)\tthis.expandProperties.height = properties.height;\n    if(properties.useCustomClose != undefined)\tthis.expandProperties.useCustomClose = properties.useCustomClose;\n  },\n\n\texpand: function(url) { \n\t  mraidBridge.expand(JSON.stringify(this.expandProperties), url);\n\t},\n\n\topen: function(url) { mraidBridge.open(url); },\n\n\tuseCustomClose: function(b) { \n\t\tthis.expandProperties.useCustomClose = b;\n\t  mraidBridge.useCustomClose(b);\n\t},\n\n\tplayVideo: function(url) { mraidBridge.playVideo(url); },\n\n\tgetOrientationProperties: function() { return this.orientationProperties; },\n\n\tsetOrientationProperties: function(properties) {\n\t\tif(properties.allowOrientationChange != undefined) this.orientationProperties.allowOrientationChange = properties.allowOrientationChange;\n\t\tif(properties.forceOrientation != undefined) this.orientationProperties.forceOrientation = properties.forceOrientation;\n\t\tmraidBridge.setOrientationProperties(JSON.stringify(this.orientationProperties));\n\t}\n\n\t\t\t\t\t\t\n};\n</script>"

.field public static final MRAID_BANNER_VIEW_ID_KEY:Ljava/lang/String; = "mraidBannerViewId"


# instance fields
.field private final FIRE_READY:Ljava/lang/String;

.field private final SET_DEFAULT_POSITION:Ljava/lang/String;

.field private final SET_SUPPORTS:Ljava/lang/String;

.field private allowOrientationChange:Z

.field private forceOrientation:Ljava/lang/String;

.field private isExpandedBannerWithUrl:Z

.field private mraidJavascriptInterfaceListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

.field private mraidState:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

.field private onSetOrientationPropertiesListener:Lcom/fusepowered/as/controller/listener/OnSetOrientationPropertiesListener;

.field private final supportsCalendar:Z

.field private final supportsInlineVideo:Z

.field private final supportsSms:Z

.field private final supportsStorePicture:Z

.field private final supportsTel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    invoke-direct {p0, p1}, Lcom/fusepowered/as/view/component/ASWebView;-><init>(Landroid/content/Context;)V

    .line 39
    sget-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->LOADING:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    iput-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->mraidState:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    .line 42
    iput-boolean v1, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->allowOrientationChange:Z

    .line 45
    iput-boolean v2, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->isExpandedBannerWithUrl:Z

    .line 48
    const-string v0, "none"

    iput-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->forceOrientation:Ljava/lang/String;

    .line 141
    iput-boolean v1, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->supportsSms:Z

    .line 143
    iput-boolean v1, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->supportsTel:Z

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->supportsCalendar:Z

    .line 147
    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->supportsStorePicture:Z

    .line 149
    iput-boolean v1, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->supportsInlineVideo:Z

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid.setSupports(true,true,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->supportsCalendar:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->supportsStorePicture:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->SET_SUPPORTS:Ljava/lang/String;

    .line 153
    const-string v0, "mraid.getCurrentPosition();"

    iput-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->SET_DEFAULT_POSITION:Ljava/lang/String;

    .line 155
    const-string v0, "mraid.fireReady();"

    iput-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->FIRE_READY:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->mraidJavascriptInterfaceListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    .line 60
    invoke-interface {p2, p0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->setAdView(Lcom/fusepowered/as/view/component/ASMraidWebView;)V

    .line 61
    new-instance v0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;

    invoke-direct {v0, p1, p2}, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;-><init>(Landroid/content/Context;Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;)V

    .line 62
    const-string v1, "mraidBridge"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v0, Lcom/fusepowered/as/view/component/ASMraidWebView$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/view/component/ASMraidWebView$1;-><init>(Lcom/fusepowered/as/view/component/ASMraidWebView;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 98
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 145
    goto :goto_0

    :cond_2
    move v0, v2

    .line 147
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/fusepowered/as/view/component/ASMraidWebView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->isExpandedBannerWithUrl:Z

    return v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/view/component/ASMraidWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->SET_SUPPORTS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/view/component/ASMraidWebView;)Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->mraidJavascriptInterfaceListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    return-object v0
.end method

.method private static eventJs(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->formatArgs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatArg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatArgs([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    const-string v1, ""

    .line 222
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/fusepowered/as/view/component/ASMraidWebView;->formatArg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return-object v1
.end method


# virtual methods
.method public fireEvent(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 213
    invoke-static {p1, p2}, Lcom/fusepowered/as/view/component/ASMraidWebView;->eventJs(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public fireViewableChange(Z)V
    .locals 4

    .prologue
    .line 204
    sget-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->VIEWABLE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->eventJs(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public getMraidJavascriptInterfaceListener()Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->mraidJavascriptInterfaceListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    return-object v0
.end method

.method public getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->mraidState:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    return-object v0
.end method

.method public onExpandedBannerClose()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->mraidJavascriptInterfaceListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    check-cast v0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->closeResizedBanner()V

    .line 189
    return-void
.end method

.method protected processData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    const-string v0, "[\'\"]mraid\\.js[\'\"]"

    const-string v1, "\'replacement\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "<head>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "<head>"

    const-string v2, "<head><script>var mraid = {\n\teventsListeners: {\n\t\tready: [],\n    error: [],\n    stateChange: [],\n\t\tviewableChange: [],\n\t\tsizeChange: []\n  },\n\n\tviewable: false,\n\n  defaultPosition: undefined,\n\n\tresizeProperties: {\n\t\twidth: undefined,\n\t\theight: undefined,\n\t\toffsetX: undefined,\n\t\toffsetY: undefined,\n\t\tcustomClosePosition: \'top-right\',\n\t\tallowOffscreen: true\n\t},\n\n\texpandProperties: {\n    width: undefined,\n\t\theight: undefined,\n\t\tuseCustomClose: false,\n\t\tisModal: true\n\t},\n\n\torientationProperties: {\n    allowOrientationChange: true,\n\t\tforceOrientation: \'none\'\n  },\n\n\tsupports: {\n    sms: false,\n    tel: false,\n    calendar: false,\n    storePicture: true,\n    inlineVideo: false\n  },\n\n  getState: function() { return mraidBridge.getState(); }, \n\n  getVersion: function() { return mraidBridge.getVersion(); },\n\n  addEventListener: function(event, listener) { \n    for(var eventListener in this.eventsListeners[event]) {\n      if (eventListener === listener) return;\n    }\n    this.eventsListeners[event].push(listener);\n\t\tconsole.log(\'adding \' + event + \' listener\');\n  },\n\n  removeEventListener: function(event, listener) {\n\t\tif(listener == undefined)\n\t\t\tthis.eventsListeners[event] = [];\n\t\telse {\n      var eventListeners = this.eventsListeners[event]\n      var i = eventListeners.indexOf(listener)\n      if (i !== -1) {\n        eventListeners.splice(i,1);\n      }\n\t\t}\n  },\n\n  fireEvent: function(event) {\n    console.log(\'firing event: \' + event);\n    var eventListeners = this.eventsListeners[event];\n    var args = Array.prototype.slice.call(arguments);\n    args.shift();\n\t\tif(event == \'viewableChange\')\n\t\t\tthis.viewable = args[0];\n\n    if(eventListeners) {\n      for (var i = 0; i < eventListeners.length; i++) {\n        eventListeners[i].apply(null, args);\n      }\n    }\n  }, \n\n  createCalendarEvent: function(calendarEvent) { mraidBridge.createCalendarEvent(JSON.stringify(calendarEvent)); },\n\n  getPlacementType: function() { return mraidBridge.getPlacementType(); },\n\n  storePicture: function(url) { mraidBridge.storePicture(url); },\n\n  supports: function(feature) { \n    return this.supports[feature];\n  },\n\n  setSupports: function(sms, tel, calendar, storePicture, inlineVideo) {\n    this.supports.sms = sms;\n    this.supports.tel = tel;\n    this.supports.calendar = calendar;\n    this.supports.storePicture = storePicture;\n    this.supports.inlineVideo = inlineVideo;\n  },\n\n  fireReady: function() {\n    this.viewable = true;\n    this.fireEvent(\'ready\');\n  },\n\n  isViewable: function() { return this.viewable; },\n\n  close: function() { mraidBridge.close(); },\n\n  getScreenSize: function() { return JSON.parse(mraidBridge.getScreenSize()); },\n\n  getMaxSize: function() { return JSON.parse(mraidBridge.getMaxSize()); },\n\n  getCurrentPosition: function() { \n\t\tvar position = JSON.parse(mraidBridge.getCurrentPosition());\n    if(this.defaultPosition == undefined)\n\t\t\tthis.defaultPosition = position;\n\t\treturn position;\n\t},\n\n  getDefaultPosition: function() { return this.defaultPosition; },\t\n\n\tgetResizeProperties: function() { return this.resizeProperties; },\n\n\tsetResizeProperties: function(properties) {\n    if(properties.width != undefined)\tthis.resizeProperties.width = properties.width;\n    if(properties.height != undefined)\tthis.resizeProperties.height = properties.height;\n    if(properties.offsetX != undefined)\tthis.resizeProperties.offsetX = properties.offsetX;\n    if(properties.offsetY != undefined)\tthis.resizeProperties.offsetY = properties.offsetY;\n    if(properties.customClosePosition != undefined)\t{\n\t\t\tif(properties.customClosePosition == \'top-left\' ||\n\t\t\t  properties.customClosePosition == \'center\' ||\n\t\t\t  properties.customClosePosition == \'bottom-left\' ||\n\t\t\t  properties.customClosePosition == \'bottom-right\' ||\n\t\t\t  properties.customClosePosition == \'top-center\' ||\n\t\t\t  properties.customClosePosition == \'bottom-center\')\n\t\t\t  this.resizeProperties.customClosePosition = properties.customClosePosition;\n\t\t\telse\n\t\t\t\tthis.resizeProperties.customClosePosition = \'top-right\';\n\t\t}\n    if(properties.allowOffscreen != undefined)\tthis.resizeProperties.allowOffscreen = properties.allowOffscreen;\n\t},\n\n\tresize: function() { mraidBridge.resize(JSON.stringify(this.resizeProperties)); },\n\n\tgetExpandProperties: function() { return this.expandProperties; }, \n\n\tsetExpandProperties: function(properties) {\n    if(properties.width != undefined)\tthis.expandProperties.width = properties.width;\n    if(properties.height != undefined)\tthis.expandProperties.height = properties.height;\n    if(properties.useCustomClose != undefined)\tthis.expandProperties.useCustomClose = properties.useCustomClose;\n  },\n\n\texpand: function(url) { \n\t  mraidBridge.expand(JSON.stringify(this.expandProperties), url);\n\t},\n\n\topen: function(url) { mraidBridge.open(url); },\n\n\tuseCustomClose: function(b) { \n\t\tthis.expandProperties.useCustomClose = b;\n\t  mraidBridge.useCustomClose(b);\n\t},\n\n\tplayVideo: function(url) { mraidBridge.playVideo(url); },\n\n\tgetOrientationProperties: function() { return this.orientationProperties; },\n\n\tsetOrientationProperties: function(properties) {\n\t\tif(properties.allowOrientationChange != undefined) this.orientationProperties.allowOrientationChange = properties.allowOrientationChange;\n\t\tif(properties.forceOrientation != undefined) this.orientationProperties.forceOrientation = properties.forceOrientation;\n\t\tmraidBridge.setOrientationProperties(JSON.stringify(this.orientationProperties));\n\t}\n\n\t\t\t\t\t\t\n};\n</script>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const-string v1, "<body>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "<body>"

    const-string v2, "<body><script>var mraid = {\n\teventsListeners: {\n\t\tready: [],\n    error: [],\n    stateChange: [],\n\t\tviewableChange: [],\n\t\tsizeChange: []\n  },\n\n\tviewable: false,\n\n  defaultPosition: undefined,\n\n\tresizeProperties: {\n\t\twidth: undefined,\n\t\theight: undefined,\n\t\toffsetX: undefined,\n\t\toffsetY: undefined,\n\t\tcustomClosePosition: \'top-right\',\n\t\tallowOffscreen: true\n\t},\n\n\texpandProperties: {\n    width: undefined,\n\t\theight: undefined,\n\t\tuseCustomClose: false,\n\t\tisModal: true\n\t},\n\n\torientationProperties: {\n    allowOrientationChange: true,\n\t\tforceOrientation: \'none\'\n  },\n\n\tsupports: {\n    sms: false,\n    tel: false,\n    calendar: false,\n    storePicture: true,\n    inlineVideo: false\n  },\n\n  getState: function() { return mraidBridge.getState(); }, \n\n  getVersion: function() { return mraidBridge.getVersion(); },\n\n  addEventListener: function(event, listener) { \n    for(var eventListener in this.eventsListeners[event]) {\n      if (eventListener === listener) return;\n    }\n    this.eventsListeners[event].push(listener);\n\t\tconsole.log(\'adding \' + event + \' listener\');\n  },\n\n  removeEventListener: function(event, listener) {\n\t\tif(listener == undefined)\n\t\t\tthis.eventsListeners[event] = [];\n\t\telse {\n      var eventListeners = this.eventsListeners[event]\n      var i = eventListeners.indexOf(listener)\n      if (i !== -1) {\n        eventListeners.splice(i,1);\n      }\n\t\t}\n  },\n\n  fireEvent: function(event) {\n    console.log(\'firing event: \' + event);\n    var eventListeners = this.eventsListeners[event];\n    var args = Array.prototype.slice.call(arguments);\n    args.shift();\n\t\tif(event == \'viewableChange\')\n\t\t\tthis.viewable = args[0];\n\n    if(eventListeners) {\n      for (var i = 0; i < eventListeners.length; i++) {\n        eventListeners[i].apply(null, args);\n      }\n    }\n  }, \n\n  createCalendarEvent: function(calendarEvent) { mraidBridge.createCalendarEvent(JSON.stringify(calendarEvent)); },\n\n  getPlacementType: function() { return mraidBridge.getPlacementType(); },\n\n  storePicture: function(url) { mraidBridge.storePicture(url); },\n\n  supports: function(feature) { \n    return this.supports[feature];\n  },\n\n  setSupports: function(sms, tel, calendar, storePicture, inlineVideo) {\n    this.supports.sms = sms;\n    this.supports.tel = tel;\n    this.supports.calendar = calendar;\n    this.supports.storePicture = storePicture;\n    this.supports.inlineVideo = inlineVideo;\n  },\n\n  fireReady: function() {\n    this.viewable = true;\n    this.fireEvent(\'ready\');\n  },\n\n  isViewable: function() { return this.viewable; },\n\n  close: function() { mraidBridge.close(); },\n\n  getScreenSize: function() { return JSON.parse(mraidBridge.getScreenSize()); },\n\n  getMaxSize: function() { return JSON.parse(mraidBridge.getMaxSize()); },\n\n  getCurrentPosition: function() { \n\t\tvar position = JSON.parse(mraidBridge.getCurrentPosition());\n    if(this.defaultPosition == undefined)\n\t\t\tthis.defaultPosition = position;\n\t\treturn position;\n\t},\n\n  getDefaultPosition: function() { return this.defaultPosition; },\t\n\n\tgetResizeProperties: function() { return this.resizeProperties; },\n\n\tsetResizeProperties: function(properties) {\n    if(properties.width != undefined)\tthis.resizeProperties.width = properties.width;\n    if(properties.height != undefined)\tthis.resizeProperties.height = properties.height;\n    if(properties.offsetX != undefined)\tthis.resizeProperties.offsetX = properties.offsetX;\n    if(properties.offsetY != undefined)\tthis.resizeProperties.offsetY = properties.offsetY;\n    if(properties.customClosePosition != undefined)\t{\n\t\t\tif(properties.customClosePosition == \'top-left\' ||\n\t\t\t  properties.customClosePosition == \'center\' ||\n\t\t\t  properties.customClosePosition == \'bottom-left\' ||\n\t\t\t  properties.customClosePosition == \'bottom-right\' ||\n\t\t\t  properties.customClosePosition == \'top-center\' ||\n\t\t\t  properties.customClosePosition == \'bottom-center\')\n\t\t\t  this.resizeProperties.customClosePosition = properties.customClosePosition;\n\t\t\telse\n\t\t\t\tthis.resizeProperties.customClosePosition = \'top-right\';\n\t\t}\n    if(properties.allowOffscreen != undefined)\tthis.resizeProperties.allowOffscreen = properties.allowOffscreen;\n\t},\n\n\tresize: function() { mraidBridge.resize(JSON.stringify(this.resizeProperties)); },\n\n\tgetExpandProperties: function() { return this.expandProperties; }, \n\n\tsetExpandProperties: function(properties) {\n    if(properties.width != undefined)\tthis.expandProperties.width = properties.width;\n    if(properties.height != undefined)\tthis.expandProperties.height = properties.height;\n    if(properties.useCustomClose != undefined)\tthis.expandProperties.useCustomClose = properties.useCustomClose;\n  },\n\n\texpand: function(url) { \n\t  mraidBridge.expand(JSON.stringify(this.expandProperties), url);\n\t},\n\n\topen: function(url) { mraidBridge.open(url); },\n\n\tuseCustomClose: function(b) { \n\t\tthis.expandProperties.useCustomClose = b;\n\t  mraidBridge.useCustomClose(b);\n\t},\n\n\tplayVideo: function(url) { mraidBridge.playVideo(url); },\n\n\tgetOrientationProperties: function() { return this.orientationProperties; },\n\n\tsetOrientationProperties: function(properties) {\n\t\tif(properties.allowOrientationChange != undefined) this.orientationProperties.allowOrientationChange = properties.allowOrientationChange;\n\t\tif(properties.forceOrientation != undefined) this.orientationProperties.forceOrientation = properties.forceOrientation;\n\t\tmraidBridge.setOrientationProperties(JSON.stringify(this.orientationProperties));\n\t}\n\n\t\t\t\t\t\t\n};\n</script>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    const-string v1, "<html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    const-string v1, "<html>"

    const-string v2, "<html><script>var mraid = {\n\teventsListeners: {\n\t\tready: [],\n    error: [],\n    stateChange: [],\n\t\tviewableChange: [],\n\t\tsizeChange: []\n  },\n\n\tviewable: false,\n\n  defaultPosition: undefined,\n\n\tresizeProperties: {\n\t\twidth: undefined,\n\t\theight: undefined,\n\t\toffsetX: undefined,\n\t\toffsetY: undefined,\n\t\tcustomClosePosition: \'top-right\',\n\t\tallowOffscreen: true\n\t},\n\n\texpandProperties: {\n    width: undefined,\n\t\theight: undefined,\n\t\tuseCustomClose: false,\n\t\tisModal: true\n\t},\n\n\torientationProperties: {\n    allowOrientationChange: true,\n\t\tforceOrientation: \'none\'\n  },\n\n\tsupports: {\n    sms: false,\n    tel: false,\n    calendar: false,\n    storePicture: true,\n    inlineVideo: false\n  },\n\n  getState: function() { return mraidBridge.getState(); }, \n\n  getVersion: function() { return mraidBridge.getVersion(); },\n\n  addEventListener: function(event, listener) { \n    for(var eventListener in this.eventsListeners[event]) {\n      if (eventListener === listener) return;\n    }\n    this.eventsListeners[event].push(listener);\n\t\tconsole.log(\'adding \' + event + \' listener\');\n  },\n\n  removeEventListener: function(event, listener) {\n\t\tif(listener == undefined)\n\t\t\tthis.eventsListeners[event] = [];\n\t\telse {\n      var eventListeners = this.eventsListeners[event]\n      var i = eventListeners.indexOf(listener)\n      if (i !== -1) {\n        eventListeners.splice(i,1);\n      }\n\t\t}\n  },\n\n  fireEvent: function(event) {\n    console.log(\'firing event: \' + event);\n    var eventListeners = this.eventsListeners[event];\n    var args = Array.prototype.slice.call(arguments);\n    args.shift();\n\t\tif(event == \'viewableChange\')\n\t\t\tthis.viewable = args[0];\n\n    if(eventListeners) {\n      for (var i = 0; i < eventListeners.length; i++) {\n        eventListeners[i].apply(null, args);\n      }\n    }\n  }, \n\n  createCalendarEvent: function(calendarEvent) { mraidBridge.createCalendarEvent(JSON.stringify(calendarEvent)); },\n\n  getPlacementType: function() { return mraidBridge.getPlacementType(); },\n\n  storePicture: function(url) { mraidBridge.storePicture(url); },\n\n  supports: function(feature) { \n    return this.supports[feature];\n  },\n\n  setSupports: function(sms, tel, calendar, storePicture, inlineVideo) {\n    this.supports.sms = sms;\n    this.supports.tel = tel;\n    this.supports.calendar = calendar;\n    this.supports.storePicture = storePicture;\n    this.supports.inlineVideo = inlineVideo;\n  },\n\n  fireReady: function() {\n    this.viewable = true;\n    this.fireEvent(\'ready\');\n  },\n\n  isViewable: function() { return this.viewable; },\n\n  close: function() { mraidBridge.close(); },\n\n  getScreenSize: function() { return JSON.parse(mraidBridge.getScreenSize()); },\n\n  getMaxSize: function() { return JSON.parse(mraidBridge.getMaxSize()); },\n\n  getCurrentPosition: function() { \n\t\tvar position = JSON.parse(mraidBridge.getCurrentPosition());\n    if(this.defaultPosition == undefined)\n\t\t\tthis.defaultPosition = position;\n\t\treturn position;\n\t},\n\n  getDefaultPosition: function() { return this.defaultPosition; },\t\n\n\tgetResizeProperties: function() { return this.resizeProperties; },\n\n\tsetResizeProperties: function(properties) {\n    if(properties.width != undefined)\tthis.resizeProperties.width = properties.width;\n    if(properties.height != undefined)\tthis.resizeProperties.height = properties.height;\n    if(properties.offsetX != undefined)\tthis.resizeProperties.offsetX = properties.offsetX;\n    if(properties.offsetY != undefined)\tthis.resizeProperties.offsetY = properties.offsetY;\n    if(properties.customClosePosition != undefined)\t{\n\t\t\tif(properties.customClosePosition == \'top-left\' ||\n\t\t\t  properties.customClosePosition == \'center\' ||\n\t\t\t  properties.customClosePosition == \'bottom-left\' ||\n\t\t\t  properties.customClosePosition == \'bottom-right\' ||\n\t\t\t  properties.customClosePosition == \'top-center\' ||\n\t\t\t  properties.customClosePosition == \'bottom-center\')\n\t\t\t  this.resizeProperties.customClosePosition = properties.customClosePosition;\n\t\t\telse\n\t\t\t\tthis.resizeProperties.customClosePosition = \'top-right\';\n\t\t}\n    if(properties.allowOffscreen != undefined)\tthis.resizeProperties.allowOffscreen = properties.allowOffscreen;\n\t},\n\n\tresize: function() { mraidBridge.resize(JSON.stringify(this.resizeProperties)); },\n\n\tgetExpandProperties: function() { return this.expandProperties; }, \n\n\tsetExpandProperties: function(properties) {\n    if(properties.width != undefined)\tthis.expandProperties.width = properties.width;\n    if(properties.height != undefined)\tthis.expandProperties.height = properties.height;\n    if(properties.useCustomClose != undefined)\tthis.expandProperties.useCustomClose = properties.useCustomClose;\n  },\n\n\texpand: function(url) { \n\t  mraidBridge.expand(JSON.stringify(this.expandProperties), url);\n\t},\n\n\topen: function(url) { mraidBridge.open(url); },\n\n\tuseCustomClose: function(b) { \n\t\tthis.expandProperties.useCustomClose = b;\n\t  mraidBridge.useCustomClose(b);\n\t},\n\n\tplayVideo: function(url) { mraidBridge.playVideo(url); },\n\n\tgetOrientationProperties: function() { return this.orientationProperties; },\n\n\tsetOrientationProperties: function(properties) {\n\t\tif(properties.allowOrientationChange != undefined) this.orientationProperties.allowOrientationChange = properties.allowOrientationChange;\n\t\tif(properties.forceOrientation != undefined) this.orientationProperties.forceOrientation = properties.forceOrientation;\n\t\tmraidBridge.setOrientationProperties(JSON.stringify(this.orientationProperties));\n\t}\n\n\t\t\t\t\t\t\n};\n</script>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<script>var mraid = {\n\teventsListeners: {\n\t\tready: [],\n    error: [],\n    stateChange: [],\n\t\tviewableChange: [],\n\t\tsizeChange: []\n  },\n\n\tviewable: false,\n\n  defaultPosition: undefined,\n\n\tresizeProperties: {\n\t\twidth: undefined,\n\t\theight: undefined,\n\t\toffsetX: undefined,\n\t\toffsetY: undefined,\n\t\tcustomClosePosition: \'top-right\',\n\t\tallowOffscreen: true\n\t},\n\n\texpandProperties: {\n    width: undefined,\n\t\theight: undefined,\n\t\tuseCustomClose: false,\n\t\tisModal: true\n\t},\n\n\torientationProperties: {\n    allowOrientationChange: true,\n\t\tforceOrientation: \'none\'\n  },\n\n\tsupports: {\n    sms: false,\n    tel: false,\n    calendar: false,\n    storePicture: true,\n    inlineVideo: false\n  },\n\n  getState: function() { return mraidBridge.getState(); }, \n\n  getVersion: function() { return mraidBridge.getVersion(); },\n\n  addEventListener: function(event, listener) { \n    for(var eventListener in this.eventsListeners[event]) {\n      if (eventListener === listener) return;\n    }\n    this.eventsListeners[event].push(listener);\n\t\tconsole.log(\'adding \' + event + \' listener\');\n  },\n\n  removeEventListener: function(event, listener) {\n\t\tif(listener == undefined)\n\t\t\tthis.eventsListeners[event] = [];\n\t\telse {\n      var eventListeners = this.eventsListeners[event]\n      var i = eventListeners.indexOf(listener)\n      if (i !== -1) {\n        eventListeners.splice(i,1);\n      }\n\t\t}\n  },\n\n  fireEvent: function(event) {\n    console.log(\'firing event: \' + event);\n    var eventListeners = this.eventsListeners[event];\n    var args = Array.prototype.slice.call(arguments);\n    args.shift();\n\t\tif(event == \'viewableChange\')\n\t\t\tthis.viewable = args[0];\n\n    if(eventListeners) {\n      for (var i = 0; i < eventListeners.length; i++) {\n        eventListeners[i].apply(null, args);\n      }\n    }\n  }, \n\n  createCalendarEvent: function(calendarEvent) { mraidBridge.createCalendarEvent(JSON.stringify(calendarEvent)); },\n\n  getPlacementType: function() { return mraidBridge.getPlacementType(); },\n\n  storePicture: function(url) { mraidBridge.storePicture(url); },\n\n  supports: function(feature) { \n    return this.supports[feature];\n  },\n\n  setSupports: function(sms, tel, calendar, storePicture, inlineVideo) {\n    this.supports.sms = sms;\n    this.supports.tel = tel;\n    this.supports.calendar = calendar;\n    this.supports.storePicture = storePicture;\n    this.supports.inlineVideo = inlineVideo;\n  },\n\n  fireReady: function() {\n    this.viewable = true;\n    this.fireEvent(\'ready\');\n  },\n\n  isViewable: function() { return this.viewable; },\n\n  close: function() { mraidBridge.close(); },\n\n  getScreenSize: function() { return JSON.parse(mraidBridge.getScreenSize()); },\n\n  getMaxSize: function() { return JSON.parse(mraidBridge.getMaxSize()); },\n\n  getCurrentPosition: function() { \n\t\tvar position = JSON.parse(mraidBridge.getCurrentPosition());\n    if(this.defaultPosition == undefined)\n\t\t\tthis.defaultPosition = position;\n\t\treturn position;\n\t},\n\n  getDefaultPosition: function() { return this.defaultPosition; },\t\n\n\tgetResizeProperties: function() { return this.resizeProperties; },\n\n\tsetResizeProperties: function(properties) {\n    if(properties.width != undefined)\tthis.resizeProperties.width = properties.width;\n    if(properties.height != undefined)\tthis.resizeProperties.height = properties.height;\n    if(properties.offsetX != undefined)\tthis.resizeProperties.offsetX = properties.offsetX;\n    if(properties.offsetY != undefined)\tthis.resizeProperties.offsetY = properties.offsetY;\n    if(properties.customClosePosition != undefined)\t{\n\t\t\tif(properties.customClosePosition == \'top-left\' ||\n\t\t\t  properties.customClosePosition == \'center\' ||\n\t\t\t  properties.customClosePosition == \'bottom-left\' ||\n\t\t\t  properties.customClosePosition == \'bottom-right\' ||\n\t\t\t  properties.customClosePosition == \'top-center\' ||\n\t\t\t  properties.customClosePosition == \'bottom-center\')\n\t\t\t  this.resizeProperties.customClosePosition = properties.customClosePosition;\n\t\t\telse\n\t\t\t\tthis.resizeProperties.customClosePosition = \'top-right\';\n\t\t}\n    if(properties.allowOffscreen != undefined)\tthis.resizeProperties.allowOffscreen = properties.allowOffscreen;\n\t},\n\n\tresize: function() { mraidBridge.resize(JSON.stringify(this.resizeProperties)); },\n\n\tgetExpandProperties: function() { return this.expandProperties; }, \n\n\tsetExpandProperties: function(properties) {\n    if(properties.width != undefined)\tthis.expandProperties.width = properties.width;\n    if(properties.height != undefined)\tthis.expandProperties.height = properties.height;\n    if(properties.useCustomClose != undefined)\tthis.expandProperties.useCustomClose = properties.useCustomClose;\n  },\n\n\texpand: function(url) { \n\t  mraidBridge.expand(JSON.stringify(this.expandProperties), url);\n\t},\n\n\topen: function(url) { mraidBridge.open(url); },\n\n\tuseCustomClose: function(b) { \n\t\tthis.expandProperties.useCustomClose = b;\n\t  mraidBridge.useCustomClose(b);\n\t},\n\n\tplayVideo: function(url) { mraidBridge.playVideo(url); },\n\n\tgetOrientationProperties: function() { return this.orientationProperties; },\n\n\tsetOrientationProperties: function(properties) {\n\t\tif(properties.allowOrientationChange != undefined) this.orientationProperties.allowOrientationChange = properties.allowOrientationChange;\n\t\tif(properties.forceOrientation != undefined) this.orientationProperties.forceOrientation = properties.forceOrientation;\n\t\tmraidBridge.setOrientationProperties(JSON.stringify(this.orientationProperties));\n\t}\n\n\t\t\t\t\t\t\n};\n</script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setIsExpandedBannerWithUrl()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->isExpandedBannerWithUrl:Z

    .line 121
    return-void
.end method

.method public setOnSetOrientationPropertiesListener(Lcom/fusepowered/as/controller/listener/OnSetOrientationPropertiesListener;)V
    .locals 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->onSetOrientationPropertiesListener:Lcom/fusepowered/as/controller/listener/OnSetOrientationPropertiesListener;

    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-boolean v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->allowOrientationChange:Z

    iget-object v1, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->forceOrientation:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/fusepowered/as/controller/listener/OnSetOrientationPropertiesListener;->onSetOrientationProperties(ZLjava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public setOrientationProperties(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 197
    const-string v0, "allowOrientationChange"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->allowOrientationChange:Z

    .line 198
    const-string v0, "forceOrientation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->forceOrientation:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->onSetOrientationPropertiesListener:Lcom/fusepowered/as/controller/listener/OnSetOrientationPropertiesListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->onSetOrientationPropertiesListener:Lcom/fusepowered/as/controller/listener/OnSetOrientationPropertiesListener;

    iget-boolean v1, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->allowOrientationChange:Z

    iget-object v2, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->forceOrientation:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/OnSetOrientationPropertiesListener;->onSetOrientationProperties(ZLjava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method public updateMraidState(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;)V
    .locals 2

    .prologue
    .line 162
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->updateMraidState(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public updateMraidState(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 173
    iput-object p1, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->mraidState:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    .line 174
    sget-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->STATE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->eventJs(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->RESIZED:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->EXPANDED:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->DEFAULT:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    if-ne p1, v0, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView;->mraidJavascriptInterfaceListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onSizeChange()V

    .line 180
    :cond_1
    return-void
.end method
