.class public Lcom/fusepowered/al/sdk/AppLovinSdkUtils;
.super Ljava/lang/Object;
.source "AppLovinSdkUtils.java"


# static fields
.field public static sdkKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-static {p0}, Lcom/fusepowered/al/sdk/AppLovinSdkUtils;->e(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 28
    .local v0, "e":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "applovin.sdk.verbose_logging"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static b(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/fusepowered/al/sdk/AppLovinSdkUtils;->e(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, "e":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 34
    const-string v1, "applovin.sdk.ad_refresh_seconds"

    const/16 v2, -0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    .line 36
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x64

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/fusepowered/al/sdk/AppLovinSdkUtils;->e(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "e":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 42
    const-string v2, "applovin.sdk.auto_preload_ad_sizes"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "string":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 47
    .end local v1    # "string":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "BANNER,INTER"

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/fusepowered/al/sdk/AppLovinSdkUtils;->e(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, "e":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 53
    const-string v2, "applovin.sdk.auto_preload_ad_types"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "string":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 58
    .end local v1    # "string":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fusepowered/al/sdk/AppLovinAdType;->REGULAR:Lcom/fusepowered/al/sdk/AppLovinAdType;

    invoke-virtual {v3}, Lcom/fusepowered/al/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/al/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/fusepowered/al/sdk/AppLovinAdType;

    invoke-virtual {v3}, Lcom/fusepowered/al/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AppLovinSdk"

    const-string v2, "Unable to retrieve application metadata"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static retrieveSdkKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    sget-object v0, Lcom/fusepowered/al/sdk/AppLovinSdkUtils;->sdkKey:Ljava/lang/String;

    return-object v0
.end method

.method public static retrieveUserSettings(Landroid/content/Context;)Lcom/fusepowered/al/sdk/AppLovinSdkSettings;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    new-instance v0, Lcom/fusepowered/al/sdk/AppLovinSdkSettings;

    invoke-direct {v0}, Lcom/fusepowered/al/sdk/AppLovinSdkSettings;-><init>()V

    .line 19
    .local v0, "appLovinSdkSettings":Lcom/fusepowered/al/sdk/AppLovinSdkSettings;
    invoke-static {p0}, Lcom/fusepowered/al/sdk/AppLovinSdkUtils;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 20
    invoke-static {p0}, Lcom/fusepowered/al/sdk/AppLovinSdkUtils;->b(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/al/sdk/AppLovinSdkSettings;->setBannerAdRefreshSeconds(J)V

    .line 21
    invoke-static {p0}, Lcom/fusepowered/al/sdk/AppLovinSdkUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/sdk/AppLovinSdkSettings;->setAutoPreloadSizes(Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lcom/fusepowered/al/sdk/AppLovinSdkUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/sdk/AppLovinSdkSettings;->setAutoPreloadTypes(Ljava/lang/String;)V

    .line 23
    return-object v0
.end method
