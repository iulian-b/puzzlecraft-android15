.class public Lcom/fusepowered/l1/IdentityProvider;
.super Ljava/lang/Object;
.source "IdentityProvider.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sIdentityMetaData:Lcom/fusepowered/l1/IdentityProvider;


# instance fields
.field private volatile mAdvertisingId:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mCarrier:Ljava/lang/String;

.field private mCarrierInited:Z

.field private mContext:Landroid/content/Context;

.field private mDntPresent:Z

.field private mLoopMeId:Ljava/lang/String;

.field private mMraid:Ljava/lang/String;

.field private mTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/fusepowered/l1/IdentityProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/IdentityProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/fusepowered/l1/IdentityProvider;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/fusepowered/l1/IdentityProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lcom/fusepowered/l1/IdentityProvider;->sIdentityMetaData:Lcom/fusepowered/l1/IdentityProvider;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/fusepowered/l1/IdentityProvider;

    invoke-direct {v0, p0}, Lcom/fusepowered/l1/IdentityProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/l1/IdentityProvider;->sIdentityMetaData:Lcom/fusepowered/l1/IdentityProvider;

    .line 40
    :cond_0
    sget-object v0, Lcom/fusepowered/l1/IdentityProvider;->sIdentityMetaData:Lcom/fusepowered/l1/IdentityProvider;

    return-object v0
.end method

.method private initAppVersion()V
    .locals 4

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/l1/IdentityProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/fusepowered/l1/IdentityProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get app version. Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 75
    const-string v1, "0.0"

    iput-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mAppVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private initCarrier()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 148
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mCarrier:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mCarrier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mCarrier:Ljava/lang/String;

    .line 152
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mCarrierInited:Z

    .line 153
    return-void
.end method

.method private initMraidSupport()V
    .locals 2

    .prologue
    .line 87
    const-string v1, "1"

    iput-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mMraid:Ljava/lang/String;

    .line 89
    :try_start_0
    const-string v1, "com.fusepowered.l1.MraidView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "0"

    iput-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mMraid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fusepowered/l1/IdentityProvider;->mAppVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/fusepowered/l1/IdentityProvider;->initAppVersion()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/IdentityProvider;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/fusepowered/l1/IdentityProvider;->mCarrierInited:Z

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/fusepowered/l1/IdentityProvider;->initCarrier()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/IdentityProvider;->mCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getGoogleAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fusepowered/l1/IdentityProvider;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    invoke-static {}, Lcom/fusepowered/l1/Utils;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 121
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Lcom/fusepowered/l1/Utils;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 130
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMraidSupport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fusepowered/l1/IdentityProvider;->mMraid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/fusepowered/l1/IdentityProvider;->initMraidSupport()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/IdentityProvider;->mMraid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 97
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 98
    const-string v1, "l"

    .line 100
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "p"

    goto :goto_0
.end method

.method public getViewerToken()Ljava/lang/String;
    .locals 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fusepowered/l1/IdentityProvider;->mAdvertisingId:Ljava/lang/String;

    .line 106
    .local v0, "advId":Ljava/lang/String;
    const-string v2, ""

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    .line 107
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fusepowered/l1/IdentityProvider;->mDntPresent:Z

    .line 108
    iget-object v2, p0, Lcom/fusepowered/l1/IdentityProvider;->mLoopMeId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 109
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "loopmeId":Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/l1/IdentityProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoopMe Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v2, v3, v4}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 111
    iput-object v1, p0, Lcom/fusepowered/l1/IdentityProvider;->mLoopMeId:Ljava/lang/String;

    .line 113
    .end local v1    # "loopmeId":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/l1/IdentityProvider;->mLoopMeId:Ljava/lang/String;

    .line 115
    .end local v0    # "advId":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public isDntPresent()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/fusepowered/l1/IdentityProvider;->mDntPresent:Z

    return v0
.end method

.method public isTestModeOn()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/fusepowered/l1/IdentityProvider;->mTestMode:Z

    return v0
.end method

.method setGoogleAdvertisingId(Ljava/lang/String;)V
    .locals 3
    .param p1, "advId"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v0, Lcom/fusepowered/l1/IdentityProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advertising Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 45
    iput-object p1, p0, Lcom/fusepowered/l1/IdentityProvider;->mAdvertisingId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method setTestMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/fusepowered/l1/IdentityProvider;->mTestMode:Z

    .line 165
    return-void
.end method
