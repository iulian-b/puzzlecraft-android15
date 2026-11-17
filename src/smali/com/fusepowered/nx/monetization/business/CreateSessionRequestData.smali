.class public Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;
.super Ljava/lang/Object;
.source "CreateSessionRequestData.java"


# instance fields
.field private advertiserTrackingEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "IsAdvertiserTrackingEnabled"
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "AppId"
    .end annotation
.end field

.field private appLanguageCode:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "AppLanguageCode"
    .end annotation
.end field

.field private buildType:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "BuildType"
    .end annotation
.end field

.field private deviceGenerationInfo:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "DeviceGenerationInfo"
    .end annotation
.end field

.field private deviceLanguageCode:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "DeviceLanguageCode"
    .end annotation
.end field

.field private isHacked:Ljava/lang/Boolean;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "IsHacked"
    .end annotation
.end field

.field private isOnWifi:Ljava/lang/Boolean;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "IsOnWifi"
    .end annotation
.end field

.field private isUsingSDK:Ljava/lang/Boolean;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "IsUsingSdk"
    .end annotation
.end field

.field private offerCacheAvailable:Ljava/lang/Boolean;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "IsOfferCacheAvailable"
    .end annotation
.end field

.field private osVersion:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "OSVersion"
    .end annotation
.end field

.field private previousSessionId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "PreviousSessionId"
    .end annotation
.end field

.field private publisherUserId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "PublisherUserId"
    .end annotation
.end field

.field private sdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "PublisherSDKVersion"
    .end annotation
.end field

.field private udids:Lcom/fusepowered/nx/common/UDIDs;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "UDIDs"
    .end annotation
.end field

.field private webViewUserAgent:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "WebViewUserAgent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->advertiserTrackingEnabled:Ljava/lang/Boolean;

    .line 74
    return-void
.end method


# virtual methods
.method public setAdvertiserTrackingEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "advertiserTrackingEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->advertiserTrackingEnabled:Ljava/lang/Boolean;

    .line 96
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->appId:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setAppLanguageCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "appLanguageCode"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->appLanguageCode:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setBuildType()V
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/fusepowered/nx/common/SharedPreferenceManager;->getBuildType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->buildType:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setDeviceGenerationInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceGenerationInfo"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->deviceGenerationInfo:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setDeviceLanguageCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceLanguageCode"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->deviceLanguageCode:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setHacked(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isHacked"    # Ljava/lang/Boolean;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->isHacked:Ljava/lang/Boolean;

    .line 153
    return-void
.end method

.method public setOfferCacheAvailable(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "offerCacheAvailable"    # Ljava/lang/Boolean;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->offerCacheAvailable:Ljava/lang/Boolean;

    .line 101
    return-void
.end method

.method public setOnCellular(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isOnCellular"    # Ljava/lang/Boolean;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->isOnWifi:Ljava/lang/Boolean;

    .line 162
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->osVersion:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setPreviousSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "previousSessionId"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->previousSessionId:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setPublisherUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisherUserId"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->publisherUserId:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setSDKVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->sdkVersion:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setUdids(Lcom/fusepowered/nx/common/UDIDs;)V
    .locals 2
    .param p1, "udids"    # Lcom/fusepowered/nx/common/UDIDs;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "UDIDs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->udids:Lcom/fusepowered/nx/common/UDIDs;

    .line 109
    return-void
.end method

.method public setUsingSDK(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isUsingSDK"    # Ljava/lang/Boolean;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->isUsingSDK:Ljava/lang/Boolean;

    .line 171
    return-void
.end method

.method public setWebViewUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "webViewUserAgent"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/CreateSessionRequestData;->webViewUserAgent:Ljava/lang/String;

    .line 184
    return-void
.end method
