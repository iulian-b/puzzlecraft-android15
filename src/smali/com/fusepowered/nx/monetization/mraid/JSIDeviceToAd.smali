.class Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;
.super Ljava/lang/Object;
.source "JSIDeviceToAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;,
        Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;
    }
.end annotation


# static fields
.field private static final ERROR_COMMANDS_DELAY:J = 0x64L

.field private static final MSG_DELAYED_ERROR:I = 0x3b300

.field private static final handler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;


# instance fields
.field private final container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

.field private final delayedErrors:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 313
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 58
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;-><init>(Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$1;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->delayedErrors:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    .line 59
    return-void
.end method

.method static synthetic access$100()Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->handler:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->CLOSE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 93
    return-void
.end method

.method public fireChangeEvent(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)V
    .locals 4
    .param p1, "newState"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .prologue
    .line 140
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_CHANGE_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 141
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 143
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    .prologue
    .line 119
    if-nez p2, :cond_0

    .line 120
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 122
    :cond_0
    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_ERROR_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 123
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->wrapInJSQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "commandName":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 126
    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->wrapInJSQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "JSIDeviceToAdd: Exception caught in fireErrorEvent()"

    invoke-static {v3}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->delayedErrors:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    invoke-virtual {v3, v0}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->delayedErrors:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;->runDelayed()V

    goto :goto_0
.end method

.method public fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "action"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    .prologue
    .line 109
    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 110
    invoke-static {p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->getExceptionDescription(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "action"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    .prologue
    .line 98
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 99
    const-string v0, ""

    invoke-static {v0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->getExceptionDescription(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public fireEvent(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Events;)V
    .locals 4
    .param p1, "event"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Events;

    .prologue
    .line 166
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 167
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Events;->getEvent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 169
    return-void
.end method

.method public fireNativeXEvent(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;)V
    .locals 4
    .param p1, "event"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

    .prologue
    .line 157
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->FIRE_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 158
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const-string v1, "nativex"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setJsObjectName(Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;->getEvent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 161
    return-void
.end method

.method public setCurrentPosition(Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;)V
    .locals 4
    .param p1, "position"    # Lcom/fusepowered/nx/monetization/mraid/objects/CurrentPosition;

    .prologue
    .line 241
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_CURRENT_POSITION:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 242
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v3}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 244
    return-void
.end method

.method public setDefaultPosition(Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;)V
    .locals 4
    .param p1, "position"    # Lcom/fusepowered/nx/monetization/mraid/objects/DefaultPosition;

    .prologue
    .line 248
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_DEFAULT_POSITION:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 249
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v3}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 251
    return-void
.end method

.method public setDeviceFeatures(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->values()[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .local v1, "feature":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->isSupported(Landroid/app/Activity;)Z

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setFeatureSupport(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while checking feature support ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_FEATURE_SUPPORT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v5, v6}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/String;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "feature":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;
    :catch_1
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "JSDeviceToAd: Exception caught in setDeviceFeatures"

    invoke-static {v2, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_FEATURE_SUPPORT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public setExpandProperties(Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;)V
    .locals 4
    .param p1, "props"    # Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    .prologue
    .line 262
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_EXPAND_PROPERTIES:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 263
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v3}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 265
    return-void
.end method

.method setFeatureSupport(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;Z)V
    .locals 4
    .param p1, "feature"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 189
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_FEATURE_SUPPORT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 190
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 192
    return-void
.end method

.method public setIsViewable(Z)V
    .locals 4
    .param p1, "isViewable"    # Z

    .prologue
    .line 181
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_IS_VIEWABLE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 182
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 184
    return-void
.end method

.method public setMaxSize(Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;)V
    .locals 4
    .param p1, "size"    # Lcom/fusepowered/nx/monetization/mraid/objects/MaxSize;

    .prologue
    .line 227
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_MAX_SIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 228
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v3}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 230
    return-void
.end method

.method setNativeVideoFeatureSupport(Ljava/lang/String;)V
    .locals 4
    .param p1, "nativeVideoOption"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_NATIVE_VIDEO_FEATURE_SUPPORT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 196
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const-string v1, "nativex"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setJsObjectName(Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->wrapInJSQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 199
    return-void
.end method

.method public setNativeVideoFeatures()V
    .locals 7

    .prologue
    .line 79
    :try_start_0
    const-class v2, Lcom/fusepowered/nx/common/JsonRequestConstants$VideoPlayerOptions;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 80
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v6, Ljava/lang/String;

    if-ne v2, v6, :cond_0

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setNativeVideoFeatureSupport(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 85
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "JSDeviceToAd: Exception caught in setNativeVideoFeatures"

    invoke-static {v2, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    sget-object v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_NATIVE_VIDEO_FEATURE_SUPPORT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {p0, v0, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->fireErrorEvent(Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public setOrientationProperties(Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;)V
    .locals 4
    .param p1, "props"    # Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;

    .prologue
    .line 234
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_ORIENTATION_PROPERTIES:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 235
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v3}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 237
    return-void
.end method

.method public setPlacementType(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;)V
    .locals 4
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .prologue
    .line 173
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_PLACEMENT_TYPE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 174
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 177
    return-void
.end method

.method public setResizeProperties(Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;)V
    .locals 4
    .param p1, "props"    # Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    .prologue
    .line 255
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_RESIZE_PROPERTIES:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 256
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v3}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 258
    return-void
.end method

.method public setScreenSize(Lcom/fusepowered/nx/monetization/mraid/objects/ScreenSize;)V
    .locals 4
    .param p1, "size"    # Lcom/fusepowered/nx/monetization/mraid/objects/ScreenSize;

    .prologue
    .line 220
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_SCREEN_SIZE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 221
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {v3}, Lcom/fusepowered/nx/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/fusepowered/nx/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 223
    return-void
.end method

.method public setState(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)V
    .locals 1
    .param p1, "state"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->setState(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)V

    .line 204
    return-void
.end method

.method public setState(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;)V
    .locals 4
    .param p1, "webView"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    .param p2, "state"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;

    .prologue
    .line 209
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_STATE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 210
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$States;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 211
    if-nez p1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    goto :goto_0
.end method

.method public trackVideo(Ljava/lang/String;Lcom/fusepowered/nx/monetization/enums/VideoProgress;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "progress"    # Lcom/fusepowered/nx/monetization/enums/VideoProgress;

    .prologue
    .line 148
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->TRACK_VIDEO:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->instance()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    move-result-object v0

    .line 149
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    const-string v1, "richmedia.tracker"

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setJsObjectName(Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->wrapInJSQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/enums/VideoProgress;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->setParams([Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 152
    return-void
.end method
