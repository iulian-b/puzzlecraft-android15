.class Lcom/fusepowered/m2/mraid/MraidInterstitial;
.super Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;
.source "MraidInterstitial.java"


# instance fields
.field private mHtmlData:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/m2/mraid/MraidInterstitial;->mHtmlData:Ljava/lang/String;

    .line 19
    return-void
.end method

.method protected preRenderHtml(Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 2
    .param p1, "customEventInterstitialListener"    # Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/m2/mraid/MraidInterstitial;->mHtmlData:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/fusepowered/m2/mobileads/M2RActivity;->preRenderHtml(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public showInterstitial()V
    .locals 6

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/m2/mraid/MraidInterstitial;->mAdReport:Lcom/fusepowered/m2/common/AdReport;

    iget-object v2, p0, Lcom/fusepowered/m2/mraid/MraidInterstitial;->mHtmlData:Ljava/lang/String;

    iget-wide v4, p0, Lcom/fusepowered/m2/mraid/MraidInterstitial;->mBroadcastIdentifier:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/fusepowered/m2/mobileads/M2RActivity;->start(Landroid/content/Context;Lcom/fusepowered/m2/common/AdReport;Ljava/lang/String;J)V

    .line 30
    return-void
.end method
