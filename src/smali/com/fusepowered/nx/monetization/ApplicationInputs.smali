.class public Lcom/fusepowered/nx/monetization/ApplicationInputs;
.super Ljava/lang/Object;
.source "ApplicationInputs.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private publisherUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->applicationName:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->publisherUserId:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->publisherUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(I)V
    .locals 1
    .param p1, "appId"    # I

    .prologue
    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->appId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->appId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->applicationName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->packageName:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setPublisherUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisherUserId"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/ApplicationInputs;->publisherUserId:Ljava/lang/String;

    .line 117
    return-void
.end method
