.class public Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;
.super Ljava/lang/Object;
.source "ShowProviderAdCommand.java"

# interfaces
.implements Lcom/fusepowered/as/controller/command/Command;


# instance fields
.field private ad:Lcom/fusepowered/as/model/ad/ProviderAd;

.field private aerServAdType:Lcom/fusepowered/as/AerServAdType;

.field private context:Landroid/content/Context;

.field private controllerId:Ljava/lang/String;

.field private isDebug:Z

.field private isPreload:Z

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field private viewId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/as/model/ad/ProviderAd;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/AerServAdType;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->ad:Lcom/fusepowered/as/model/ad/ProviderAd;

    .line 38
    iput-object p3, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 39
    iput-object p4, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->aerServAdType:Lcom/fusepowered/as/AerServAdType;

    .line 40
    iput-object p5, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->viewId:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->controllerId:Ljava/lang/String;

    .line 42
    iput-boolean p7, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->isDebug:Z

    .line 43
    iput-boolean p8, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->isPreload:Z

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowProviderAdCommand constructed"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Execute being called on ShowProviderAdCommand"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->viewId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fusepowered/as/view/ViewLocator;->getInstance()Lcom/fusepowered/as/view/ViewLocator;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->viewId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ViewLocator;->locateView(Ljava/lang/String;)Lcom/fusepowered/as/view/View;

    move-result-object v4

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->ad:Lcom/fusepowered/as/model/ad/ProviderAd;

    iget-object v1, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    iget-object v2, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->aerServAdType:Lcom/fusepowered/as/AerServAdType;

    iget-object v5, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->controllerId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->isDebug:Z

    iget-boolean v7, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->isPreload:Z

    invoke-static/range {v0 .. v7}, Lcom/fusepowered/as/factory/ProviderFactory;->buildProvider(Lcom/fusepowered/as/model/ad/ProviderAd;Lcom/fusepowered/as/controller/listener/ProviderListener;Landroid/content/Context;Lcom/fusepowered/as/AerServAdType;Lcom/fusepowered/as/view/View;Ljava/lang/String;ZZ)Lcom/fusepowered/as/adapter/Provider;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "provider is null, cannot continue"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 65
    :goto_1
    return-void

    .line 50
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 59
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/fusepowered/as/adapter/Provider;->requestAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an error trying to show ad"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 62
    iget-object v0, p0, Lcom/fusepowered/as/controller/command/ShowProviderAdCommand;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    goto :goto_1
.end method
