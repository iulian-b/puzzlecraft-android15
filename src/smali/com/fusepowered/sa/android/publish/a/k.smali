.class public Lcom/fusepowered/sa/android/publish/a/k;
.super Lcom/fusepowered/sa/android/publish/a/e;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/a/e;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/a/k;->setPlacement(Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/a/k;J)J
    .locals 1

    iput-wide p1, p0, Lcom/fusepowered/sa/android/publish/a/k;->a:J

    return-wide p1
.end method

.method private a()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fusepowered/sa/android/publish/a/k;->a:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getAdCacheTtl()J

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


# virtual methods
.method public load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/a/k;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/a/k;->a()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "ReturnAd"

    const-string v2, "Reloading return ad - Cache TTL has passed"

    invoke-static {v1, v3, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/a/k;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    sget-object v1, Lcom/fusepowered/sa/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/a/k;->setState(Lcom/fusepowered/sa/android/publish/Ad$AdState;)V

    new-instance v1, Lcom/fusepowered/sa/android/publish/a/k$1;

    invoke-direct {v1, p0, p2}, Lcom/fusepowered/sa/android/publish/a/k$1;-><init>(Lcom/fusepowered/sa/android/publish/a/k;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    invoke-super {p0, p1, v1, v0}, Lcom/fusepowered/sa/android/publish/a/e;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "ReturnAd"

    const-string v2, "Loading return ad"

    invoke-static {v1, v3, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 2

    new-instance v0, Lcom/fusepowered/sa/android/publish/c/m;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/a/k;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/fusepowered/sa/android/publish/c/m;-><init>(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/a/d;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/c/m;->c()V

    return-void
.end method

.method public show()Z
    .locals 3

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/a/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/fusepowered/sa/android/publish/a/e;->show()Z

    move-result v0

    sget-object v1, Lcom/fusepowered/sa/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/a/k;->setState(Lcom/fusepowered/sa/android/publish/Ad$AdState;)V

    :goto_0
    return v0

    :cond_0
    const-string v0, "ReturnAd"

    const/4 v1, 0x3

    const-string v2, "Return Ad not shown - Cache TTL has passed"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
