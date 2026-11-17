.class public Lcom/fusepowered/sa/android/publish/StartAppAd;
.super Lcom/fusepowered/sa/android/publish/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/StartAppAd$3;,
        Lcom/fusepowered/sa/android/publish/StartAppAd$a;,
        Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartAppAd"

.field private static testMode:Z


# instance fields
.field private ad:Lcom/fusepowered/sa/android/publish/c;

.field private adMode:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

.field private callback:Lcom/fusepowered/sa/android/publish/AdDisplayListener;

.field private callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private forceFullpage:Z

.field private forceOfferWall2D:Z

.field private forceOfferWall3D:Z

.field private forceOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/sa/android/publish/StartAppAd;->testMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/Ad;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->forceOfferWall3D:Z

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->forceOfferWall2D:Z

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->forceFullpage:Z

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->forceOverlay:Z

    sget-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->adMode:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->callback:Lcom/fusepowered/sa/android/publish/AdDisplayListener;

    new-instance v0, Lcom/fusepowered/sa/android/publish/StartAppAd$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/StartAppAd$1;-><init>(Lcom/fusepowered/sa/android/publish/StartAppAd;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/sa/android/publish/StartAppAd;)Lcom/fusepowered/sa/android/publish/AdDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->callback:Lcom/fusepowered/sa/android/publish/AdDisplayListener;

    return-object v0
.end method

.method private createFullpageSelection()V
    .locals 3

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getFullscreenOverlayProbability()I

    move-result v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->forceFullpage:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->forceOverlay:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/fusepowered/sa/android/publish/a/c;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/fusepowered/sa/android/publish/a/j;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/a/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    goto :goto_0
.end method

.method private createOfferwallSelection()V
    .locals 3

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getProbability3D()I

    move-result v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->forceOfferWall3D:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->forceOfferWall2D:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/fusepowered/sa/android/publish/a/h;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/fusepowered/sa/android/publish/a/i;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerBroadcastReceiver(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setAdMode(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->adMode:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    return-void
.end method

.method public static showSlider(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/slider/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public static showSlider(Landroid/app/Activity;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/sa/android/publish/slider/b;-><init>(Landroid/app/Activity;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)V

    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/fusepowered/sa/android/publish/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/splash/SplashHideListener;)V

    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/splash/SplashHideListener;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p2, p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setDefaults(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/app/Activity;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fusepowered/sa/android/publish/AppWallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "SplashConfig"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "AdPreference"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "testMode"

    sget-boolean v2, Lcom/fusepowered/sa/android/publish/StartAppAd;->testMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "placement"

    sget-object v2, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;->getIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v1, 0x44008000    # 514.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/fusepowered/sa/android/publish/StartAppAd$2;

    invoke-direct {v0, p0, p4}, Lcom/fusepowered/sa/android/publish/StartAppAd$2;-><init>(Landroid/app/Activity;Lcom/fusepowered/sa/android/publish/splash/SplashHideListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.fusepowered.sa.android.splashHidden"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fusepowered.sa.android.CloseAdActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getLauncherName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    invoke-interface {v0}, Lcom/fusepowered/sa/android/publish/c;->getLauncherName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/fusepowered/sa/android/publish/Ad$AdState;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    invoke-interface {v0}, Lcom/fusepowered/sa/android/publish/c;->getState()Lcom/fusepowered/sa/android/publish/Ad$AdState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fusepowered/sa/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/fusepowered/sa/android/publish/Ad$AdState;

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    invoke-interface {v0}, Lcom/fusepowered/sa/android/publish/c;->isReady()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->adMode:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    sget-object v1, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    invoke-interface {v0}, Lcom/fusepowered/sa/android/publish/c;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    new-instance v0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;

    invoke-direct {v0, p0, p2}, Lcom/fusepowered/sa/android/publish/StartAppAd$a;-><init>(Lcom/fusepowered/sa/android/publish/StartAppAd;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    :cond_2
    sget-object v1, Lcom/fusepowered/sa/android/publish/StartAppAd$3;->a:[I

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->adMode:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad Type: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    invoke-interface {v1, p1, v0}, Lcom/fusepowered/sa/android/publish/c;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getHtml3DProbability()I

    move-result v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-ge v2, v1, :cond_3

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->createFullpageSelection()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->createOfferwallSelection()V

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/fusepowered/sa/android/publish/a/c;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/fusepowered/sa/android/publish/a/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/fusepowered/sa/android/publish/a/j;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/fusepowered/sa/android/publish/a/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->createOfferwallSelection()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public loadAd()V
    .locals 3

    sget-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    new-instance v1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v1}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/fusepowered/sa/android/publish/StartAppAd;->loadAd(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 2

    sget-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    new-instance v1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v1}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    invoke-virtual {p0, v0, v1, p1}, Lcom/fusepowered/sa/android/publish/StartAppAd;->loadAd(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;)V
    .locals 2

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/fusepowered/sa/android/publish/StartAppAd;->loadAd(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/fusepowered/sa/android/publish/StartAppAd;->loadAd(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->loadAd(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/StartAppAd;->setAdMode(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;)V

    invoke-virtual {p0, p2, p3}, Lcom/fusepowered/sa/android/publish/StartAppAd;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    return-void
.end method

.method public loadAd(Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
    .locals 2

    sget-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/fusepowered/sa/android/publish/StartAppAd;->loadAd(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    invoke-virtual {p0, v0, p1, p2}, Lcom/fusepowered/sa/android/publish/StartAppAd;->loadAd(Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    return-void
.end method

.method protected loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 0

    return-void
.end method

.method public loadSplash(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 2

    new-instance v0, Lcom/fusepowered/sa/android/publish/a/m;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/a/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    invoke-interface {v0, p1, p2}, Lcom/fusepowered/sa/android/publish/c;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->showAd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->getInstance()Lcom/fusepowered/sa/android/publish/StartAppSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "StartAppAd"

    const/4 v1, 0x3

    const-string v2, "Could not display StartAppAd onBackPressed"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "AdMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->adMode:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->FULLPAGE:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->adMode:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->load()Z

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->OFFERWALL:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->adMode:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->OVERLAY:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->adMode:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->loadAd()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/fusepowered/sa/android/publish/StartAppAd$3;->a:[I

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->adMode:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v1, "AdMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public show()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->show(Lcom/fusepowered/sa/android/publish/AdDisplayListener;)Z

    move-result v0

    return v0
.end method

.method public show(Lcom/fusepowered/sa/android/publish/AdDisplayListener;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->callback:Lcom/fusepowered/sa/android/publish/AdDisplayListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    invoke-interface {v1}, Lcom/fusepowered/sa/android/publish/c;->show()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->ad:Lcom/fusepowered/sa/android/publish/c;

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->callback:Lcom/fusepowered/sa/android/publish/AdDisplayListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd;->callback:Lcom/fusepowered/sa/android/publish/AdDisplayListener;

    invoke-interface {v1, p0}, Lcom/fusepowered/sa/android/publish/AdDisplayListener;->adDisplayed(Lcom/fusepowered/sa/android/publish/Ad;)V

    const-string v1, "com.fusepowered.sa.android.HideDisplayBroadcastListener"

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/StartAppAd;->registerBroadcastReceiver(Ljava/lang/String;)V

    const-string v1, "com.fusepowered.sa.android.OnClickCallback"

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/StartAppAd;->registerBroadcastReceiver(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public showAd()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/StartAppAd;->showAd(Lcom/fusepowered/sa/android/publish/AdDisplayListener;)Z

    move-result v0

    return v0
.end method

.method public showAd(Lcom/fusepowered/sa/android/publish/AdDisplayListener;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/StartAppAd;->show(Lcom/fusepowered/sa/android/publish/AdDisplayListener;)Z

    move-result v0

    return v0
.end method
