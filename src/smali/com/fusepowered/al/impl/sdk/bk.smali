.class Lcom/fusepowered/al/impl/sdk/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/fusepowered/al/sdk/AppLovinLogger;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/fusepowered/al/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->b:Lcom/fusepowered/al/sdk/AppLovinLogger;

    return-void
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/fusepowered/al/impl/sdk/az;->J:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getAdService()Lcom/fusepowered/al/sdk/AppLovinAdService;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/al/impl/sdk/d;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/fusepowered/al/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lcom/fusepowered/al/sdk/AppLovinAdSize;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/al/sdk/AppLovinAdType;->REGULAR:Lcom/fusepowered/al/sdk/AppLovinAdType;

    invoke-virtual {v1, v4, v5}, Lcom/fusepowered/al/impl/sdk/d;->a(Lcom/fusepowered/al/sdk/AppLovinAdSize;Lcom/fusepowered/al/sdk/AppLovinAdType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/fusepowered/al/impl/sdk/az;->K:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v2}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fusepowered/al/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/fusepowered/al/sdk/AppLovinAdSize;

    sget-object v2, Lcom/fusepowered/al/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/fusepowered/al/sdk/AppLovinAdType;

    invoke-virtual {v1, v0, v2}, Lcom/fusepowered/al/impl/sdk/d;->a(Lcom/fusepowered/al/sdk/AppLovinAdSize;Lcom/fusepowered/al/sdk/AppLovinAdType;)V

    :cond_1
    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    const-string v0, "android.permission.INTERNET"

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bk;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/fusepowered/al/impl/sdk/p;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->b:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v1, "TaskInitializeSdk"

    const-string v2, "Unable to enable AppLovin SDK: no android.permission.INTERNET"

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 6

    sget-object v0, Lcom/fusepowered/al/impl/sdk/az;->m:Lcom/fusepowered/al/impl/sdk/bb;

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/fusepowered/al/impl/sdk/cb;->a(Lcom/fusepowered/al/impl/sdk/bb;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/fusepowered/al/impl/sdk/bg;

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1}, Lcom/fusepowered/al/impl/sdk/bg;-><init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a()Lcom/fusepowered/al/impl/sdk/bl;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/al/impl/sdk/bm;->b:Lcom/fusepowered/al/impl/sdk/bm;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/fusepowered/al/impl/sdk/bl;->a(Lcom/fusepowered/al/impl/sdk/ay;Lcom/fusepowered/al/impl/sdk/bm;J)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->b:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v1, "TaskInitializeSdk"

    const-string v4, "Initializing AppLovin SDK 5.4.2..."

    invoke-interface {v0, v1, v4}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/al/impl/sdk/bk;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->b()Lcom/fusepowered/al/impl/sdk/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/be;->c()V

    const-string v1, "ad_imp_session"

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/be;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/sdk/a;->b(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/fusepowered/al/impl/sdk/t;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bk;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/t;->d(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/fusepowered/al/impl/sdk/bk;->b()V

    invoke-direct {p0}, Lcom/fusepowered/al/impl/sdk/bk;->c()V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/fusepowered/al/impl/sdk/az;->P:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/fusepowered/al/impl/sdk/bc;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/al/impl/sdk/az;->P:Lcom/fusepowered/al/impl/sdk/bb;

    const-string v4, "true"

    invoke-virtual {v0, v1, v4}, Lcom/fusepowered/al/impl/sdk/bc;->a(Lcom/fusepowered/al/impl/sdk/bb;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bk;->b:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v4, "TaskInitializeSdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppLovin SDK 5.4.2 initialization "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "succeeded"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bk;->b:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v4, "TaskInitializeSdk"

    const-string v5, "Unable to intialize SDK, disabling the SDK"

    invoke-interface {v1, v4, v5, v0}, Lcom/fusepowered/al/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/bk;->b:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v4, "TaskInitializeSdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppLovin SDK 5.4.2 initialization "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "succeeded"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "failed"

    goto :goto_1

    :cond_3
    const-string v0, "failed"

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v4, p0, Lcom/fusepowered/al/impl/sdk/bk;->b:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v5, "TaskInitializeSdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppLovin SDK 5.4.2 initialization "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bk;->a:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "succeeded"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "failed"

    goto :goto_4
.end method
