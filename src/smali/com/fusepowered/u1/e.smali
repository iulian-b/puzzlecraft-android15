.class final Lcom/fusepowered/u1/e;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 998
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 999
    const-string v0, "Unity Ads ready."

    invoke-static {v0}, Lcom/fusepowered/u1/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1000
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->d()Lcom/fusepowered/u1/IUnityAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/u1/IUnityAdsListener;->onFetchCompleted()V

    .line 1001
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->g()Z

    .line 1003
    :cond_0
    return-void
.end method
