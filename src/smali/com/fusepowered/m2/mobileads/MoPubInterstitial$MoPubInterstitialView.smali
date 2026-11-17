.class public Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;
.super Lcom/fusepowered/m2/mobileads/MoPubView;
.source "MoPubInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/mobileads/MoPubInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoPubInterstitialView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    .line 251
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->setAutorefreshEnabled(Z)V

    .line 253
    return-void
.end method


# virtual methods
.method protected adFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->access$100(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->access$100(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-interface {v0, v1, p1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 298
    :cond_0
    return-void
.end method

.method public getAdFormat()Lcom/fusepowered/m2/common/AdFormat;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/fusepowered/m2/common/AdFormat;->INTERSTITIAL:Lcom/fusepowered/m2/common/AdFormat;

    return-object v0
.end method

.method protected loadCustomEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "customEventClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p2, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string v0, "Couldn\'t invoke custom event because the server did not specify one."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->access$000(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->access$000(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;->invalidate()V

    .line 276
    :cond_2
    const-string v0, "Loading custom event interstitial adapter."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/AdViewController;->getBroadcastIdentifier()J

    move-result-wide v4

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/AdViewController;->getAdReport()Lcom/fusepowered/m2/common/AdReport;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;->create(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/fusepowered/m2/common/AdReport;)Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->access$002(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;)Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    .line 284
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->access$000(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;->setAdapterListener(Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;)V

    .line 285
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/MoPubInterstitial;->access$000(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;)Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;->loadInterstitial()V

    goto :goto_0
.end method

.method protected trackImpression()V
    .locals 1

    .prologue
    .line 289
    const-string v0, "Tracking impression for interstitial."

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/AdViewController;->trackImpression()V

    .line 291
    :cond_0
    return-void
.end method
