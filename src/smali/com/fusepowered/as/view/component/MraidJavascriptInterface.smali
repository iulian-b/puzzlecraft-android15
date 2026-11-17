.class public Lcom/fusepowered/as/view/component/MraidJavascriptInterface;
.super Ljava/lang/Object;
.source "MraidJavascriptInterface.java"


# static fields
.field public static final EXPAND_CUSTOM_CLOSE:Ljava/lang/String; = "mraidExpandCustomClose"

.field public static final EXPAND_URL_KEY:Ljava/lang/String; = "mraidExpandUrl"

.field public static final PLAY_VIDEO_URL_KEY:Ljava/lang/String; = "mraidPlayVideoUrl"

.field private static final VERSION:Ljava/lang/String; = "2.0"


# instance fields
.field private context:Landroid/content/Context;

.field private mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->close()V

    .line 71
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->MRAID_CLOSE:Lcom/fusepowered/as/AerServEvent;

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->fireMraidEvent(Lcom/fusepowered/as/AerServEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->CLOSE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v1, v2, v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lcom/fusepowered/as/controller/command/CreateCalendarEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/fusepowered/as/controller/command/CreateCalendarEventCommand;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/CreateCalendarEventCommand;->execute()V

    .line 46
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->MRAID_CREATE_CALENDAR_EVENT:Lcom/fusepowered/as/AerServEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->fireMraidEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v1, v2, v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public expand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 124
    :try_start_0
    const-string v0, "undefined"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->expand(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->MRAID_RESIZE:Lcom/fusepowered/as/AerServEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->fireMraidEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->EXPAND:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v1, v2, v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCurrentPosition()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"x\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"y\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"width\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"height\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_CURRENT_POSITION:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v1, v2, v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    .line 106
    const-string v0, "{\"x\":0,\"y\":0,\"width\":0,\"height\":0}"

    goto :goto_0
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->getMaxSize()Landroid/graphics/Point;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"height\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"width\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_MAX_SIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v1, v2, v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    .line 95
    const-string v0, "{\"height\":0,\"width\":0}"

    goto :goto_0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->getPlacementType()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidPlacementType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidPlacementType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"height\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"width\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_SCREEN_SIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v1, v2, v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    .line 84
    const-string v0, "{\"height\":0,\"width\":0}"

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->getState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 39
    const-string v0, "2.0"

    return-object v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->open(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->MRAID_OPEN:Lcom/fusepowered/as/AerServEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->fireMraidEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->OPEN:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v1, v2, v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->playVideo(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->MRAID_PLAY_VIDEO:Lcom/fusepowered/as/AerServEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->fireMraidEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->PLAY_VIDEO:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v1, v2, v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public resize(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->resize(Lorg/json/JSONObject;)V

    .line 114
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->MRAID_RESIZE:Lcom/fusepowered/as/AerServEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->fireMraidEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->RESIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v1, v2, v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->setOrientationProperties(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->SET_ORIENTATION_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v1, v2, v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 60
    :try_start_0
    new-instance v0, Lcom/fusepowered/as/controller/command/DownloadImageCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/fusepowered/as/controller/command/DownloadImageCommand;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/DownloadImageCommand;->execute()V

    .line 61
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->MRAID_STORE_PICTURE:Lcom/fusepowered/as/AerServEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->fireMraidEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->STORE_PICTURE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v1, v2, v0}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public useCustomClose(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fusepowered/as/view/component/MraidJavascriptInterface;->mraidListener:Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->useCustomClose(Z)V

    .line 164
    return-void
.end method
