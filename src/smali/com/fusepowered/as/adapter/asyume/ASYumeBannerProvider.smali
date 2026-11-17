.class public Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;
.super Ljava/lang/Object;
.source "ASYumeBannerProvider.java"

# interfaces
.implements Lcom/fusepowered/as/adapter/Provider;


# static fields
.field private static instance:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

.field private static monitor:Ljava/lang/Object;


# instance fields
.field private asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->monitor:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;)Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->viewGroup:Landroid/view/ViewGroup;

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
    .line 49
    const-string v0, "com.yume.android.sdk.banner.YuMeAdView"

    invoke-static {v0}, Lcom/fusepowered/as/utils/ReflectionUtils;->canFindClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not find class.  failing over"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    sget-object v1, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->instance:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

    invoke-direct {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;-><init>()V

    sput-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->instance:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

    .line 59
    :cond_1
    sget-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->instance:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

    invoke-virtual {v0, p0}, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->configure(Ljava/util/Properties;)V

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-object v0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->instance:Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;

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


# virtual methods
.method public configure(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    invoke-direct {v0, p1}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    .line 40
    const-string v0, "viewGroup"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties does not contain viewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    const-string v0, "viewGroup"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->viewGroup:Landroid/view/ViewGroup;

    .line 45
    return-void
.end method

.method public requestAd()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;->asYumeConfig:Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider$1;-><init>(Lcom/fusepowered/as/adapter/asyume/ASYumeBannerProvider;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method
