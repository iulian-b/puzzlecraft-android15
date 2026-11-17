.class public Lcom/fusepowered/ads/adapters/ApplifierListener;
.super Ljava/lang/Object;
.source "ApplifierListener.java"

# interfaces
.implements Lcom/fusepowered/u1/IUnityAdsListener;


# instance fields
.field public listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fusepowered/u1/IUnityAdsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mainListener:Lcom/fusepowered/u1/IUnityAdsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->listeners:Ljava/util/Set;

    .line 18
    return-void
.end method


# virtual methods
.method public addListener(Lcom/fusepowered/u1/IUnityAdsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fusepowered/u1/IUnityAdsListener;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    return-void
.end method

.method public onFetchCompleted()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    invoke-interface {v0}, Lcom/fusepowered/u1/IUnityAdsListener;->onFetchCompleted()V

    .line 65
    :cond_0
    return-void
.end method

.method public onFetchFailed()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    invoke-interface {v0}, Lcom/fusepowered/u1/IUnityAdsListener;->onFetchFailed()V

    .line 72
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    invoke-interface {v0}, Lcom/fusepowered/u1/IUnityAdsListener;->onHide()V

    .line 37
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    invoke-interface {v0}, Lcom/fusepowered/u1/IUnityAdsListener;->onShow()V

    .line 44
    :cond_0
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    invoke-interface {v0, p1, p2}, Lcom/fusepowered/u1/IUnityAdsListener;->onVideoCompleted(Ljava/lang/String;Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public onVideoStarted()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    invoke-interface {v0}, Lcom/fusepowered/u1/IUnityAdsListener;->onVideoStarted()V

    .line 51
    :cond_0
    return-void
.end method

.method public setMainListener(Lcom/fusepowered/u1/IUnityAdsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/u1/IUnityAdsListener;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fusepowered/ads/adapters/ApplifierListener;->addListener(Lcom/fusepowered/u1/IUnityAdsListener;)V

    .line 28
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/ApplifierListener;->mainListener:Lcom/fusepowered/u1/IUnityAdsListener;

    .line 29
    return-void
.end method
