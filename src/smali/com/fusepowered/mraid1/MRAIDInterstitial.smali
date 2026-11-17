.class public Lcom/fusepowered/mraid1/MRAIDInterstitial;
.super Ljava/lang/Object;
.source "MRAIDInterstitial.java"

# interfaces
.implements Lcom/fusepowered/mraid1/MRAIDViewListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDInterstitial"


# instance fields
.field private handler:Landroid/os/Handler;

.field public isReady:Z

.field private listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

.field public mraidView:Lcom/fusepowered/mraid1/MRAIDView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/fusepowered/mraid1/MRAIDInterstitialListener;Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "backgroundColor"    # I
    .param p5, "supportedNativeFeatures"    # [Ljava/lang/String;
    .param p6, "listener"    # Lcom/fusepowered/mraid1/MRAIDInterstitialListener;
    .param p7, "nativeFeatureListener"    # Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p6, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->handler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/fusepowered/mraid1/MRAIDView;

    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p0

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/fusepowered/mraid1/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/fusepowered/mraid1/MRAIDViewListener;Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;Z)V

    iput-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->mraidView:Lcom/fusepowered/mraid1/MRAIDView;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/fusepowered/mraid1/MRAIDInterstitialListener;Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "supportedNativeFeatures"    # [Ljava/lang/String;
    .param p5, "listener"    # Lcom/fusepowered/mraid1/MRAIDInterstitialListener;
    .param p6, "nativeFeatureListener"    # Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;

    .prologue
    .line 29
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/fusepowered/mraid1/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/fusepowered/mraid1/MRAIDInterstitialListener;Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/mraid1/MRAIDInterstitial;)Lcom/fusepowered/mraid1/MRAIDInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/mraid1/MRAIDInterstitial;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public mraidViewAcceptPressed(Lcom/fusepowered/mraid1/MRAIDView;)V
    .locals 1
    .param p1, "mraidView"    # Lcom/fusepowered/mraid1/MRAIDView;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/mraid1/MRAIDInterstitialListener;->mraidInterstitialAcceptPressed(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V

    .line 116
    :cond_0
    return-void
.end method

.method public mraidViewClose(Lcom/fusepowered/mraid1/MRAIDView;)V
    .locals 2
    .param p1, "mraidView"    # Lcom/fusepowered/mraid1/MRAIDView;

    .prologue
    .line 90
    const-string v0, "MRAIDInterstitial-MRAIDViewListener"

    const-string v1, "mraidViewClose"

    invoke-static {v0, v1}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->isReady:Z

    .line 92
    const/4 p1, 0x0

    .line 93
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/mraid1/MRAIDInterstitialListener;->mraidInterstitialHide(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V

    .line 96
    :cond_0
    return-void
.end method

.method public mraidViewExpand(Lcom/fusepowered/mraid1/MRAIDView;)V
    .locals 2
    .param p1, "mraidView"    # Lcom/fusepowered/mraid1/MRAIDView;

    .prologue
    .line 82
    const-string v0, "MRAIDInterstitial-MRAIDViewListener"

    const-string v1, "mraidViewExpand"

    invoke-static {v0, v1}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/mraid1/MRAIDInterstitialListener;->mraidInterstitialShow(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V

    .line 86
    :cond_0
    return-void
.end method

.method public mraidViewFailedToLoad(Lcom/fusepowered/mraid1/MRAIDView;)V
    .locals 1
    .param p1, "mraidView"    # Lcom/fusepowered/mraid1/MRAIDView;

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->isReady:Z

    .line 106
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/mraid1/MRAIDInterstitialListener;->mraidInterstitialFailedToLoad(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V

    .line 109
    :cond_0
    return-void
.end method

.method public mraidViewLoaded(Lcom/fusepowered/mraid1/MRAIDView;)V
    .locals 4
    .param p1, "mraidView"    # Lcom/fusepowered/mraid1/MRAIDView;

    .prologue
    .line 65
    const-string v0, "MRAIDInterstitial-MRAIDViewListener"

    const-string v1, "mraidViewLoaded"

    invoke-static {v0, v1}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->isReady:Z

    .line 67
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/mraid1/MRAIDInterstitial$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/mraid1/MRAIDInterstitial$1;-><init>(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method

.method public mraidViewRejectPressed(Lcom/fusepowered/mraid1/MRAIDView;)V
    .locals 1
    .param p1, "mraidView"    # Lcom/fusepowered/mraid1/MRAIDView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->listener:Lcom/fusepowered/mraid1/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/mraid1/MRAIDInterstitialListener;->mraidInterstitialRejectPressed(Lcom/fusepowered/mraid1/MRAIDInterstitial;)V

    .line 123
    :cond_0
    return-void
.end method

.method public mraidViewResize(Lcom/fusepowered/mraid1/MRAIDView;IIII)Z
    .locals 1
    .param p1, "mraidView"    # Lcom/fusepowered/mraid1/MRAIDView;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "offsetX"    # I
    .param p5, "offsetY"    # I

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public setOrientationConfig(I)V
    .locals 1
    .param p1, "rotateMode"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->mraidView:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/mraid1/MRAIDView;->setOrientationConfig(I)V

    .line 127
    return-void
.end method

.method public show()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-boolean v1, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->isReady:Z

    if-nez v1, :cond_0

    .line 49
    const-string v1, "MRAIDInterstitial"

    const-string v2, "interstitial is not ready to show"

    invoke-static {v1, v2}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->mraidView:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-virtual {v1}, Lcom/fusepowered/mraid1/MRAIDView;->showAsInterstitial()V

    .line 53
    iput-boolean v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->isReady:Z

    .line 54
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDInterstitial;->mraidView:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/mraid1/MRAIDView;->updateContext(Landroid/content/Context;)V

    .line 59
    return-void
.end method
