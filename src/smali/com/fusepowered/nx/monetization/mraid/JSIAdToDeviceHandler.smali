.class Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;
.super Ljava/lang/Object;
.source "JSIAdToDeviceHandler.java"


# instance fields
.field private final container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 40
    return-void
.end method

.method private fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "command"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    if-nez p2, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public adConverted()V
    .locals 2

    .prologue
    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->adConverted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to call redeem currency"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "AdToDevice: close()"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->close()V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "close() failed. MRAIDContainer reference lost."

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: createCalendarEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 227
    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-nez v3, :cond_0

    .line 228
    const-string v3, "Container reference lost"

    const/4 v4, 0x0

    sget-object v5, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v4, v5}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 247
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 232
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-direct {v2}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;-><init>()V

    .line 233
    .local v2, "entry":Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;
    const-string v3, "description"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setDescription(Ljava/lang/String;)V

    .line 234
    const-string v3, "end"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setEnd(Ljava/lang/String;)V

    .line 235
    const-string v3, "id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setId(Ljava/lang/String;)V

    .line 236
    const-string v3, "location"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setLocation(Ljava/lang/String;)V

    .line 237
    const-string v3, "reminder"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setReminder(Ljava/lang/String;)V

    .line 238
    const-string v3, "start"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setStart(Ljava/lang/String;)V

    .line 239
    const-string v3, "status"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setStatus(Ljava/lang/String;)V

    .line 240
    const-string v3, "summary"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setSummary(Ljava/lang/String;)V

    .line 241
    const-string v3, "transparency"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setTransparency(Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->addCalendarEntry(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entry":Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v6, v1, v3}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public enableCloseRegion(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->enableCloseRegion(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to call enableCloseRegion"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public expand()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "AdToDevice: expand()"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expand(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "expand() failed. MRAIDContainer reference lost."

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public expand(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: expand("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 90
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/fusepowered/nx/common/Utilities;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expand(Ljava/lang/String;)V

    .line 100
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->expand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->EXPAND:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v5, v1, v3}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public loaded()V
    .locals 2

    .prologue
    .line 187
    const-string v1, "AdToDevice: loaded()"

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onMraidLoaded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error occurred while initializing the MRAID controller"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdToDevice: log("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 179
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 180
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "log"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Logging failed"

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->LOG:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v2, v3, v4}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 6
    .param p1, "encodedData"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: open("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-nez v3, :cond_1

    .line 46
    const-string v3, " open - MRAIDContainer is null."

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 51
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->trackClick(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->analyseUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    sget-object v4, Lcom/fusepowered/nx/monetization/enums/AdEvent;->USER_NAVIGATES_OUT_OF_APP:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v5, "The user clicked on a link in the ad and is navigating out of the app"

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getWillCloseAdOnRedirect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->OPEN:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v1, v4}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: playVideo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 199
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 200
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 201
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->playVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->PLAY_VIDEO:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v1, v4}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public prepareVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->prepareVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to call prepare video"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public registerCallId(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->registerCallId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to register command callId with the controller"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public resize()V
    .locals 1

    .prologue
    .line 167
    const-string v0, "AdToDevice: resize()"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->resize()V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v0, "resize() failed. MRAIDContainer reference lost"

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 5
    .param p1, "expandProperties"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: setExpandProperties("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 121
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 122
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;

    invoke-direct {v2}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;-><init>()V

    .line 123
    .local v2, "props":Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->setHeight(Ljava/lang/Integer;)V

    .line 124
    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->setWidth(Ljava/lang/Integer;)V

    .line 125
    const-string v3, "isModal"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->setModal(Ljava/lang/Boolean;)V

    .line 126
    const-string v3, "useCustomClose"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 127
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setExpandProperties(Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "props":Lcom/fusepowered/nx/monetization/mraid/objects/ExpandProperties;
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_EXPAND_PROPERTIES:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v1, v4}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 5
    .param p1, "orientationProperties"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: setOrientationProperties("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 137
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 138
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;

    invoke-direct {v2}, Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;-><init>()V

    .line 139
    .local v2, "props":Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;
    const-string v3, "allowOrientationChange"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;->setAllowOrientationChange(Ljava/lang/Boolean;)V

    .line 140
    const-string v3, "forceOrientation"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;->setForceOrientation(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setOrientationProperties(Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "props":Lcom/fusepowered/nx/monetization/mraid/objects/OrientationProperties;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_ORIENTATION_PROPERTIES:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v1, v4}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdToDevice: setPageSize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 264
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 265
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "height"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v2, v4

    .line 266
    .local v2, "height":I
    const-string v4, "width"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v3, v4

    .line 267
    .local v3, "width":I
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v4, v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setPageSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "height":I
    .end local v3    # "width":I
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Unable to parse setPageSize data"

    invoke-static {v4, v1}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setResizeProperties(Ljava/lang/String;)V
    .locals 5
    .param p1, "resizeProperties"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: setResizeProperties("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 153
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;

    invoke-direct {v2}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;-><init>()V

    .line 154
    .local v2, "props":Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;
    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->setAllowOffscreen(Ljava/lang/Boolean;)V

    .line 155
    const-string v3, "customClosePosition"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->setCustomClosePosition(Ljava/lang/String;)V

    .line 156
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->setHeight(Ljava/lang/Integer;)V

    .line 157
    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->setOffsetX(Ljava/lang/Integer;)V

    .line 158
    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->setOffsetY(Ljava/lang/Integer;)V

    .line 159
    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;->setWidth(Ljava/lang/Integer;)V

    .line 160
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setResizeProperties(Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "props":Lcom/fusepowered/nx/monetization/mraid/objects/ResizeProperties;
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->SET_RESIZE_PROPERTIES:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v1, v4}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public setVideoOptions(Ljava/lang/String;)V
    .locals 2
    .param p1, "videoOptionsJSON"    # Ljava/lang/String;

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setVideoOptions(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to call prepare video"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setWillCloseAdOnRedirect(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->setWillCloseAdOnRedirect(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to call setWillCloseAdOnRedirect"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: storePicture("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 211
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 212
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->storePicture(Ljava/lang/String;)V

    .line 221
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 216
    .restart local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "url":Ljava/lang/String;
    :cond_0
    const-string v3, "Picture url is invalid"

    const/4 v4, 0x0

    sget-object v5, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->STORE_PICTURE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v4, v5}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->STORE_PICTURE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v6, v1, v3}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public useCustomClose(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdToDevice: useCustomClose("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 253
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 254
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    const-string v2, "useCustomClose"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->useCustomClose(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->USE_CUSTOM_CLOSE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v2, v1, v3}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method
