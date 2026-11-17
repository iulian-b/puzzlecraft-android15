.class public Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;
.super Ljava/lang/Object;
.source "CreateSessionResponseData.java"


# instance fields
.field private cachingFrequency:Ljava/lang/Integer;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "CachingFrequency"
    .end annotation
.end field

.field private currencyEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "IsCurrencyEnabled"
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "ApiDeviceId"
    .end annotation
.end field

.field private firstRun:Ljava/lang/Boolean;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "IsFirstRun"
    .end annotation
.end field

.field private freeSpaceMinMegabytes:Ljava/lang/Integer;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "FreeSpaceMin"
    .end annotation
.end field

.field private log:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Log"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Message;",
            ">;"
        }
    .end annotation
.end field

.field private offerwallEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "IsAfppOfferwallEnabled"
    .end annotation
.end field

.field private session:Lcom/fusepowered/nx/monetization/business/Session;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Session"
    .end annotation
.end field

.field private violations:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Violations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Violation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->violations:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->messages:Ljava/util/List;

    .line 44
    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->log:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCachingFrequency()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->cachingFrequency:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->cachingFrequency:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeSpaceMinMegabytes()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->freeSpaceMinMegabytes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSession()Lcom/fusepowered/nx/monetization/business/Session;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->session:Lcom/fusepowered/nx/monetization/business/Session;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->session:Lcom/fusepowered/nx/monetization/business/Session;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->session:Lcom/fusepowered/nx/monetization/business/Session;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/business/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isCurrencyEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->currencyEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->currencyEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isOfferwallEnabled()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;->offerwallEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
