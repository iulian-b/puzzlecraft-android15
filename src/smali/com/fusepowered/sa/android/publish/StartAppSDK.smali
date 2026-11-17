.class public Lcom/fusepowered/sa/android/publish/StartAppSDK;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/StartAppSDK$a;
    }
.end annotation


# instance fields
.field private a:Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

.field private b:Z

.field private c:Z

.field private d:J

.field private e:Landroid/app/Application;

.field private f:Lcom/fusepowered/sa/android/publish/a/k;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/lang/Object;

.field private j:Z

.field private k:Lcom/fusepowered/sa/android/publish/AdEventListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->c:Z

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->e:Landroid/app/Application;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->f:Lcom/fusepowered/sa/android/publish/a/k;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->g:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->h:Z

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->j:Z

    new-instance v0, Lcom/fusepowered/sa/android/publish/StartAppSDK$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/StartAppSDK$2;-><init>(Lcom/fusepowered/sa/android/publish/StartAppSDK;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->k:Lcom/fusepowered/sa/android/publish/AdEventListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/sa/android/publish/StartAppSDK$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/StartAppSDK;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x3

    const-string v0, "shared_prefs_first_init"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/fusepowered/sa/android/publish/f/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "StartAppSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First Initialization: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v0, "StartAppSDK"

    const-string v1, "Sending Download Event"

    invoke-static {v0, v4, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/sa/android/publish/StartAppSDK$1;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/sa/android/publish/StartAppSDK$1;-><init>(Lcom/fusepowered/sa/android/publish/StartAppSDK;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "shared_prefs_first_init"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/fusepowered/sa/android/publish/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/SDKAdPreferences;Z)V
    .locals 4

    invoke-static {p1}, Lcom/fusepowered/sa/android/publish/model/MetaData;->init(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->j:Z

    const-string v0, "StartAppSDK"

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialize StartAppSDK with DevID:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], AppID:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a:Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    const-string v0, "shared_prefs_sdk_ad_prefs"

    new-instance v1, Lcom/fusepowered/sa/android/publish/gson/Gson;

    invoke-direct {v1}, Lcom/fusepowered/sa/android/publish/gson/Gson;-><init>()V

    invoke-virtual {v1, p4}, Lcom/fusepowered/sa/android/publish/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/fusepowered/sa/android/publish/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    invoke-static {p1, v0}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/fusepowered/sa/android/publish/model/MetaData;->loadFromServer(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;ZLcom/fusepowered/sa/android/publish/c/p;)V

    invoke-direct {p0, p1, p5}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a(Landroid/content/Context;Z)V

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->isReturnAdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->registerApplicationLifeCycle(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a(Z)V

    invoke-static {}, Lcom/fusepowered/sa/android/publish/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a(Z)V

    const-string v0, "StartAppSDK"

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Return Ads: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "StartAppSDK"

    const/4 v1, 0x6

    const-string v2, "Cannot activate return ads - api lower than 14"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->b:Z

    return-void
.end method

.method private a()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->d:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getReturnAdMinBackgroundTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/StartAppSDK;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->h:Z

    return p1
.end method

.method public static getInstance()Lcom/fusepowered/sa/android/publish/StartAppSDK;
    .locals 1

    invoke-static {}, Lcom/fusepowered/sa/android/publish/StartAppSDK$a;->a()Lcom/fusepowered/sa/android/publish/StartAppSDK;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/SDKAdPreferences;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/SDKAdPreferences;)V
    .locals 6

    invoke-static {}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->getInstance()Lcom/fusepowered/sa/android/publish/StartAppSDK;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/SDKAdPreferences;Z)V
    .locals 6

    invoke-static {}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->getInstance()Lcom/fusepowered/sa/android/publish/StartAppSDK;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/SDKAdPreferences;Z)V

    return-void
.end method


# virtual methods
.method public getSDKAdPrefs(Landroid/content/Context;)Lcom/fusepowered/sa/android/publish/SDKAdPreferences;
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a:Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    if-nez v0, :cond_0

    const-string v0, "shared_prefs_sdk_ad_prefs"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/fusepowered/sa/android/publish/f/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a:Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a:Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    return-object v0

    :cond_1
    new-instance v1, Lcom/fusepowered/sa/android/publish/gson/Gson;

    invoke-direct {v1}, Lcom/fusepowered/sa/android/publish/gson/Gson;-><init>()V

    const-class v2, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    invoke-virtual {v1, v0, v2}, Lcom/fusepowered/sa/android/publish/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a:Lcom/fusepowered/sa/android/publish/SDKAdPreferences;

    goto :goto_0
.end method

.method public isReturnAdsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->b:Z

    return v0
.end method

.method public loadReturnAd()V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->loadReturnAd(Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    return-void
.end method

.method public loadReturnAd(Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->f:Lcom/fusepowered/sa/android/publish/a/k;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->isReturnAdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->isDisableReturnAd()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->h:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->f:Lcom/fusepowered/sa/android/publish/a/k;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->k:Lcom/fusepowered/sa/android/publish/AdEventListener;

    invoke-virtual {v0, p1, v1}, Lcom/fusepowered/sa/android/publish/a/k;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x3

    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStarted ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->isDisableReturnAd()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->c:Z

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->f:Lcom/fusepowered/sa/android/publish/a/k;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/k;->show()Z

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->loadReturnAd()V

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->loadReturnAd()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity Added:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x3

    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStopped ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity removed:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->loadReturnAd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->d:J

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "StartAppSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity hadn\'t been found:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->c:Z

    return-void
.end method

.method public registerApplicationLifeCycle(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->f:Lcom/fusepowered/sa/android/publish/a/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/a/k;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/a/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->f:Lcom/fusepowered/sa/android/publish/a/k;

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->e:Landroid/app/Application;

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->i:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->e:Landroid/app/Application;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->e:Landroid/app/Application;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->i:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/b;->a(Landroid/app/Application;Ljava/lang/Object;)V

    const-string v0, "StartAppSDK"

    const/4 v1, 0x3

    const-string v2, "Unregistered LifeCycle Callbacks"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v0, "StartAppSDK"

    const-string v1, "Registring LifeCycle Callbacks"

    invoke-static {v0, v3, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->e:Landroid/app/Application;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/b;->a(Landroid/app/Application;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK;->i:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
