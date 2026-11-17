.class public Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;
.super Ljava/lang/Object;
.source "OfferActivationHandlerImpl.java"

# interfaces
.implements Lcom/chillingo/liboffers/session/OfferActivationHandler;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OfferActivationHandlerImpl"

.field private static final URL_CRYSTAL_PREFIX:Ljava/lang/String; = "crystal-http"

.field private static final URL_HTTP_PREFIX:Ljava/lang/String; = "http"

.field private static final URL_OFFERS_PREFIX:Ljava/lang/String; = "offers-http"


# instance fields
.field private analyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

.field context:Landroid/content/Context;
    .annotation build Lcom/googlecode/androidannotations/annotations/RootContext;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method private openAmazonStoreForOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/Offer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "amzn://apps/android?p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getTargetBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->openUrlIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->analyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    if-eqz v2, :cond_1

    .line 72
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 74
    .local v1, "index":Ljava/lang/Integer;
    const-string v2, "index"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const-string v2, "index"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 77
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->analyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logAppstoreOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    .line 79
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getTargetBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->openUrlIntent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openGooglePlayStoreForOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/Offer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getTargetBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->openUrlIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->analyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    if-eqz v2, :cond_1

    .line 48
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50
    .local v1, "index":Ljava/lang/Integer;
    const-string v2, "index"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "index"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 53
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->analyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logAppstoreOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    .line 55
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getTargetBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->openUrlIntent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openUrlIntent(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v1, "Offers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening external URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method private openUrlOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/Offer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid url specified for openURL"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_1
    const-string v3, "crystal-http"

    const-string v4, "http"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "strippedUrlString":Ljava/lang/String;
    const-string v3, "offers-http"

    const-string v4, "http"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-direct {p0, v1}, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->openUrlIntent(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->analyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    if-eqz v3, :cond_3

    .line 108
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    .local v0, "index":Ljava/lang/Integer;
    const-string v3, "index"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    const-string v3, "index"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "index":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 113
    .restart local v0    # "index":Ljava/lang/Integer;
    :cond_2
    iget-object v3, p0, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->analyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;->logWebpageOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V

    .line 116
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_3
    return-void
.end method


# virtual methods
.method public activateOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/Offer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    sget-object v1, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl$1;->$SwitchMap$com$chillingo$liboffers$model$Offer$OfferType:[I

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getOfferType()Lcom/chillingo/liboffers/model/Offer$OfferType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/liboffers/model/Offer$OfferType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    :pswitch_0
    return-void

    .line 125
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->openGooglePlayStoreForOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "OfferActivationHandlerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to activate offer - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v1, "OfferActivationHandlerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Throwable;
    :pswitch_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->openAmazonStoreForOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V

    goto :goto_0

    .line 133
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->openUrlOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDialogRequiredForOffer(Lcom/chillingo/liboffers/model/Offer;)Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
    .locals 2
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getOfferType()Lcom/chillingo/liboffers/model/Offer$OfferType;

    move-result-object v0

    sget-object v1, Lcom/chillingo/liboffers/model/Offer$OfferType;->OFFER_TYPE_HREF:Lcom/chillingo/liboffers/model/Offer$OfferType;

    if-ne v0, v1, :cond_1

    .line 163
    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getHref()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crystal-http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getHref()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offers-http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/chillingo/liboffers/model/Offer;->getHref()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    sget-object v0, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->DIALOG_TYPE_OPEN_URL:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    .line 171
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;->DIALOG_TYPE_NOT_REQUIRED:Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;

    goto :goto_0
.end method

.method public setAnalyticsPoster(Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;)V
    .locals 0
    .param p1, "analyticsPoster"    # Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/chillingo/liboffers/session/OfferActivationHandlerImpl;->analyticsPoster:Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;

    .line 178
    return-void
.end method
