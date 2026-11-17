.class public Lcom/fusepowered/as/controller/command/PlayVideoCommand;
.super Ljava/lang/Object;
.source "PlayVideoCommand.java"

# interfaces
.implements Lcom/fusepowered/as/controller/command/Command;


# instance fields
.field private properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fusepowered/as/controller/command/PlayVideoCommand;->properties:Ljava/util/Properties;

    .line 22
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playing video"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;

    iget-object v1, p0, Lcom/fusepowered/as/controller/command/PlayVideoCommand;->properties:Ljava/util/Properties;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;-><init>(Ljava/util/Properties;)V

    .line 29
    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServInterstitialProvider;->requestAd()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Exception caught while trying to play video"

    invoke-static {v0, v2, v1}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 33
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/PlayVideoCommand;->properties:Ljava/util/Properties;

    const-string v2, "mraidJavascriptInterfaceListener"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/PlayVideoCommand;->properties:Ljava/util/Properties;

    const-string v2, "mraidJavascriptInterfaceListener"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->EXPAND:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-interface {v0, v2, v1}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V

    goto :goto_0
.end method
