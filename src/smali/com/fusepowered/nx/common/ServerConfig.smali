.class public final Lcom/fusepowered/nx/common/ServerConfig;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# static fields
.field private static final PRODUCTION_SERVER_DOMAIN:Ljava/lang/String; = "appclick.co"

.field private static final TEST_HOST_NAME:Ljava/lang/String; = "nativex-sdk-testapi.appspot.com"

.field private static isTestEndPointEnabled:Z

.field private static serverUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/common/ServerConfig;->serverUrl:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/nx/common/ServerConfig;->isTestEndPointEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyConfiguration(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "https"    # Z

    .prologue
    .line 38
    sget-object v1, Lcom/fusepowered/nx/common/ServerConfig;->serverUrl:Ljava/lang/String;

    .line 40
    .local v1, "urlToApply":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 41
    const-string v1, "http://appclick.co/"

    .line 44
    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "http://appclick.co/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    const-string v1, "https://appclick.co/"

    .line 48
    :cond_1
    sget-boolean v2, Lcom/fusepowered/nx/common/ServerConfig;->isTestEndPointEnabled:Z

    if-eqz v2, :cond_2

    .line 49
    const-string v1, "http://nativex-sdk-testapi.appspot.com/"

    .line 52
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 57
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "appId"

    invoke-static {}, Lcom/fusepowered/nx/monetization/manager/MonetizationSharedDataManager;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p0, v0}, Lcom/fusepowered/nx/common/Utilities;->appendParamsToUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 61
    return-object p0
.end method

.method public static final applyHttp(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "https"    # Z

    .prologue
    .line 72
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    if-eqz p1, :cond_1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    :cond_0
    :goto_0
    return-object p0

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static setTestEndpointEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 65
    sput-boolean p0, Lcom/fusepowered/nx/common/ServerConfig;->isTestEndPointEnabled:Z

    .line 66
    return-void
.end method
