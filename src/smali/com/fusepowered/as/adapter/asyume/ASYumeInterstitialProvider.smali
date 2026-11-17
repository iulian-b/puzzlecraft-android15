.class public Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;
.super Ljava/lang/Object;
.source "ASYumeInterstitialProvider.java"

# interfaces
.implements Lcom/fusepowered/as/adapter/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$2;
    }
.end annotation


# static fields
.field private static instance:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

.field private static monitor:Ljava/lang/Object;


# instance fields
.field private activity:Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

.field private asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

.field private yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->monitor:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/yume/android/sdk/YuMeSDKInterface;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/YuMeActivity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->activity:Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    return-object v0
.end method

.method public static getInstance()Lcom/fusepowered/as/adapter/Provider;
    .locals 3

    .prologue
    .line 68
    sget-object v1, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Need to call with properties first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    sget-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    return-object v0
.end method

.method public static getInstance(Ljava/util/Properties;)Lcom/fusepowered/as/adapter/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "com.yume.android.sdk.YuMeSDKInterface"

    invoke-static {v0}, Lcom/fusepowered/as/utils/ReflectionUtils;->canFindClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not find class.  failing over"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    sget-object v1, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-direct {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;-><init>()V

    sput-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    .line 59
    :cond_1
    sget-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-virtual {v0, p0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->configure(Ljava/util/Properties;)V

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->instance:Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initYumeSDK()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yume/android/sdk/YuMeException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getYuMeAdParams()Lcom/yume/android/sdk/YuMeAdParams;

    move-result-object v1

    new-instance v2, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;

    invoke-direct {v2, p0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider$1;-><init>(Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;)V

    invoke-interface {v0, v1, v2}, Lcom/yume/android/sdk/YuMeSDKInterface;->YuMeSDK_Init(Lcom/yume/android/sdk/YuMeAdParams;Lcom/yume/android/sdk/YuMeAppInterface;)V

    .line 205
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->activity:Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yume/android/sdk/YuMeSDKInterface;->YuMeSDK_SetParentView(Landroid/widget/FrameLayout;)V

    .line 206
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    sget-object v1, Lcom/yume/android/sdk/YuMeAdBlockType;->PREROLL:Lcom/yume/android/sdk/YuMeAdBlockType;

    invoke-interface {v0, v1}, Lcom/yume/android/sdk/YuMeSDKInterface;->YuMeSDK_InitAd(Lcom/yume/android/sdk/YuMeAdBlockType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    goto :goto_0
.end method


# virtual methods
.method public configure(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    .line 46
    return-void
.end method

.method public kill()V
    .locals 2

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    invoke-interface {v0}, Lcom/yume/android/sdk/YuMeSDKInterface;->YuMeSDK_DeInit()V
    :try_end_0
    .catch Lcom/yume/android/sdk/YuMeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was an error calling DeInt on yume sdk2sdk2"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewReady(Lcom/fusepowered/as/adapter/asyume/YuMeActivity;)V
    .locals 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->activity:Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    .line 219
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    if-nez v0, :cond_1

    .line 220
    new-instance v0, Lcom/yume/android/sdk/YuMeSDKInterfaceImpl;

    invoke-direct {v0}, Lcom/yume/android/sdk/YuMeSDKInterfaceImpl;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    .line 222
    :try_start_0
    invoke-direct {p0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->initYumeSDK()V
    :try_end_0
    .catch Lcom/yume/android/sdk/YuMeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->activity:Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->finish()V

    goto :goto_0

    .line 231
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->activity:Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yume/android/sdk/YuMeSDKInterface;->YuMeSDK_SetParentView(Landroid/widget/FrameLayout;)V

    .line 232
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    sget-object v1, Lcom/yume/android/sdk/YuMeAdBlockType;->PREROLL:Lcom/yume/android/sdk/YuMeAdBlockType;

    invoke-interface {v0, v1}, Lcom/yume/android/sdk/YuMeSDKInterface;->YuMeSDK_ShowAd(Lcom/yume/android/sdk/YuMeAdBlockType;)V
    :try_end_1
    .catch Lcom/yume/android/sdk/YuMeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 236
    :try_start_2
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    invoke-interface {v0}, Lcom/yume/android/sdk/YuMeSDKInterface;->YuMeSDK_DeInit()V

    .line 237
    invoke-direct {p0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->initYumeSDK()V
    :try_end_2
    .catch Lcom/yume/android/sdk/YuMeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 238
    :catch_2
    move-exception v0

    .line 241
    :try_start_3
    invoke-direct {p0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->initYumeSDK()V
    :try_end_3
    .catch Lcom/yume/android/sdk/YuMeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 242
    :catch_3
    move-exception v1

    .line 243
    invoke-virtual {v0}, Lcom/yume/android/sdk/YuMeException;->printStackTrace()V

    .line 244
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->activity:Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->activity:Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->finish()V

    goto :goto_0

    .line 247
    :catch_4
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->activity:Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->activity:Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->finish()V

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->yuMeSDKInterface:Lcom/yume/android/sdk/YuMeSDKInterface;

    invoke-interface {v0}, Lcom/yume/android/sdk/YuMeSDKInterface;->YuMeSDK_StopAd()V
    :try_end_0
    .catch Lcom/yume/android/sdk/YuMeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was an error calling StopAd on yume sdk2sdk2"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestAd()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string v2, "controllerId"

    iget-object v3, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    invoke-virtual {v3}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getControllerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method
