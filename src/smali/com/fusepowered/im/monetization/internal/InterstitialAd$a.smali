.class Lcom/fusepowered/im/monetization/internal/InterstitialAd$a;
.super Landroid/os/Handler;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/im/monetization/internal/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/im/monetization/internal/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/im/monetization/internal/InterstitialAd;)V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 335
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/im/monetization/internal/InterstitialAd$a;->a:Ljava/lang/ref/WeakReference;

    .line 336
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 340
    iget-object v0, p0, Lcom/fusepowered/im/monetization/internal/InterstitialAd$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/im/monetization/internal/InterstitialAd;

    .line 343
    if-eqz v0, :cond_0

    .line 344
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 346
    :pswitch_0
    invoke-static {v0}, Lcom/fusepowered/im/monetization/internal/InterstitialAd;->b(Lcom/fusepowered/im/monetization/internal/InterstitialAd;)Lcom/fusepowered/im/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/im/re/container/IMWebView;->cancelLoad()V

    .line 347
    invoke-static {v0}, Lcom/fusepowered/im/monetization/internal/InterstitialAd;->b(Lcom/fusepowered/im/monetization/internal/InterstitialAd;)Lcom/fusepowered/im/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/im/re/container/IMWebView;->stopLoading()V

    .line 348
    invoke-static {v0}, Lcom/fusepowered/im/monetization/internal/InterstitialAd;->b(Lcom/fusepowered/im/monetization/internal/InterstitialAd;)Lcom/fusepowered/im/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/im/re/container/IMWebView;->deinit()V

    .line 349
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/im/monetization/internal/InterstitialAd;->a(Lcom/fusepowered/im/monetization/internal/InterstitialAd;Lcom/fusepowered/im/re/container/IMWebView;)Lcom/fusepowered/im/re/container/IMWebView;

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Lcom/fusepowered/im/monetization/internal/InterstitialAd;->c(Lcom/fusepowered/im/monetization/internal/InterstitialAd;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 351
    invoke-static {v0}, Lcom/fusepowered/im/monetization/internal/InterstitialAd;->d(Lcom/fusepowered/im/monetization/internal/InterstitialAd;)Lcom/fusepowered/im/commons/network/Response;

    move-result-object v1

    sget-object v4, Lcom/fusepowered/im/monetization/internal/configs/NetworkEventType;->RENDER_TIMEOUT:Lcom/fusepowered/im/monetization/internal/configs/NetworkEventType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fusepowered/im/monetization/internal/InterstitialAd;->collectMetrics(Lcom/fusepowered/im/commons/network/Response;JLcom/fusepowered/im/monetization/internal/configs/NetworkEventType;)V

    .line 353
    iget-object v1, v0, Lcom/fusepowered/im/monetization/internal/InterstitialAd;->mAdListener:Lcom/fusepowered/im/monetization/internal/IMAdListener;

    if-eqz v1, :cond_0

    .line 354
    iget-object v0, v0, Lcom/fusepowered/im/monetization/internal/InterstitialAd;->mAdListener:Lcom/fusepowered/im/monetization/internal/IMAdListener;

    sget-object v1, Lcom/fusepowered/im/monetization/internal/AdErrorCode;->AD_RENDERING_TIMEOUT:Lcom/fusepowered/im/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/im/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/fusepowered/im/monetization/internal/AdErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception handling message in Interstitial"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/im/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
    .end packed-switch
.end method
