.class Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;
.super Ljava/lang/Object;
.source "JSIAdToDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;,
        Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;
    }
.end annotation


# static fields
.field private static final MSG_AD_CONVERTED:I = 0x3f7

.field private static final MSG_CLOSE:I = 0x3e9

.field private static final MSG_CREATE_CALENDAR_EVENT:I = 0x3f3

.field private static final MSG_ENABLE_CLOSE_REGION:I = 0x3fb

.field private static final MSG_EXPAND:I = 0x3ea

.field private static final MSG_LOADED:I = 0x3f0

.field private static final MSG_LOG:I = 0x3ef

.field private static final MSG_OPEN:I = 0x3e8

.field private static final MSG_PLAY_VIDEO:I = 0x3f1

.field private static final MSG_RESIZE:I = 0x3ee

.field private static final MSG_SET_EXPAND_PROPERTIES:I = 0x3eb

.field private static final MSG_SET_ORIENTATION_PROPERTIES:I = 0x3ec

.field private static final MSG_SET_PAGE_SIZE:I = 0x3f6

.field private static final MSG_SET_RESIZE_PROPERTIES:I = 0x3ed

.field private static final MSG_SET_WILL_CLOSE_AD_ON_REDIRECT:I = 0x3fa

.field private static final MSG_STORE_PICTURE:I = 0x3f2

.field private static final MSG_USE_CUSTOM_CLOSE:I = 0x3f4

.field private static final MSG_VIDEO_OPTIONS:I = 0x3f9

.field private static final MSG_VIDEO_PREPARE:I = 0x3f8

.field private static final handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;


# instance fields
.field private final jsiHandler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->jsiHandler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    .line 133
    return-void
.end method

.method private createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->jsiHandler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    if-eqz v2, :cond_0

    .line 225
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;-><init>(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$1;)V

    .line 226
    .local v0, "handlerData":Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;
    invoke-static {v0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$002(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->jsiHandler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$102(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    .line 230
    .end local v0    # "handlerData":Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public adConverted()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3f7

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void
.end method

.method public close()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 143
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3f3

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 207
    return-void
.end method

.method public expand()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 148
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3ea

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public loaded()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 188
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3f0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 189
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3ef

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3e8

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 194
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3f1

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    return-void
.end method

.method public prepareVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 241
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3f8

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 242
    return-void
.end method

.method public resize()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 177
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3ee

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    return-void
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3eb

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3ec

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3f6

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 219
    return-void
.end method

.method public setResizeProperties(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 172
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3ed

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    return-void
.end method

.method public setVideoOptions(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 247
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3f9

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    return-void
.end method

.method public shouldEnableCloseRegion(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 257
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3fb

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 258
    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3f2

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    return-void
.end method

.method public useCustomClose(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 212
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3f4

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    return-void
.end method

.method public willCloseAdOnRedirect(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 252
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;

    const/16 v1, 0x3fa

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;->createHandlerData(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 253
    return-void
.end method
