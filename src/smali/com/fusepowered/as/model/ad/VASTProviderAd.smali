.class public final Lcom/fusepowered/as/model/ad/VASTProviderAd;
.super Ljava/lang/Object;
.source "VASTProviderAd.java"

# interfaces
.implements Lcom/fusepowered/as/model/ad/ProviderAd;


# static fields
.field private static final providerName:Ljava/lang/String; = "ASAerServ"


# instance fields
.field private closeOffset:Ljava/lang/String;

.field private vast:Lcom/fusepowered/as/model/vast/VAST;

.field private virtualCurrencyData:Lcom/fusepowered/as/AerServVirtualCurrency;

.field private virtualCurrencyEnabled:Z

.field private vpaid:Lcom/fusepowered/as/model/vast/Vpaid;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->virtualCurrencyEnabled:Z

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->virtualCurrencyEnabled:Z

    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot instantiate VASTAd.  Invalid xml"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/as/model/vast/VAST;->parseXml(Ljava/lang/String;)Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    invoke-static {p2}, Lcom/fusepowered/as/model/ad/VirtualCurrencyHelper;->isVirtualCurrencyEnabled(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->virtualCurrencyEnabled:Z

    .line 70
    new-instance v0, Lcom/fusepowered/as/AerServVirtualCurrency;

    invoke-direct {v0, p2}, Lcom/fusepowered/as/AerServVirtualCurrency;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->virtualCurrencyData:Lcom/fusepowered/as/AerServVirtualCurrency;

    .line 72
    :cond_2
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an error parsing vast.  vast does not conform to spec"

    invoke-static {v1, v2}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot instantiate VASTAd.  Invalid xml"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :catch_1
    move-exception v0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IOException when trying to parse vast"

    invoke-static {v1, v2}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot instantiate VASTAd.  Invalid xml"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/fusepowered/as/model/vast/VAST;Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->followVastWrapper(Lcom/fusepowered/as/model/vast/VAST;Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/as/model/ad/VASTProviderAd;)Lcom/fusepowered/as/model/vast/VAST;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/model/ad/VASTProviderAd;Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->buildVpaidIfExists(Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V

    return-void
.end method

.method public static buildVASTAd(Ljava/util/Map;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/fusepowered/as/controller/listener/AdFactoryListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    const-class v0, Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Building VAST ad"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v1, Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-direct {v1, p1, p0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 375
    const-string v0, "X-AerServ"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v0, "X-AerServ"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 380
    const-string v0, "closeOffset"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "closeOffset"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/fusepowered/as/model/ad/VASTProviderAd;->closeOffset:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVast()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 398
    const-string v0, "empty vast"

    invoke-interface {p2, v0}, Lcom/fusepowered/as/controller/listener/AdFactoryListener;->adBuildFailed(Ljava/lang/String;)V

    .line 428
    :goto_2
    return-void

    .line 380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 387
    const-class v2, Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not parse the AerServ header or one of its keys."

    invoke-static {v2, v3, v0}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 402
    :cond_2
    iget-object v0, v1, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v0, :cond_3

    .line 403
    const-class v0, Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VAST ad constructed is a wrapper. continue digging."

    invoke-static {v0, v2}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v0, Lcom/fusepowered/as/model/ad/VASTProviderAd$2;

    invoke-direct {v0, v1, p2}, Lcom/fusepowered/as/model/ad/VASTProviderAd$2;-><init>(Lcom/fusepowered/as/model/ad/VASTProviderAd;Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V

    .line 422
    iget-object v1, v1, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-static {v1, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->followVastWrapper(Lcom/fusepowered/as/model/vast/VAST;Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;)V

    goto :goto_2

    .line 426
    :cond_3
    invoke-direct {v1, p2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->buildVpaidIfExists(Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V

    goto :goto_2
.end method

.method private buildVpaidIfExists(Lcom/fusepowered/as/controller/listener/AdFactoryListener;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getFirstPlayableVAST(Lcom/fusepowered/as/model/vast/VAST;)Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Ad;

    .line 202
    instance-of v1, v0, Lcom/fusepowered/as/model/vast/InLine;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 204
    check-cast v1, Lcom/fusepowered/as/model/vast/InLine;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/InLine;->getCreatives()Lcom/fusepowered/as/model/vast/Creatives;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Creatives;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/as/model/vast/Creative;

    .line 206
    instance-of v2, v1, Lcom/fusepowered/as/model/vast/LinearCreative;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 208
    check-cast v2, Lcom/fusepowered/as/model/vast/LinearCreative;

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getMediaFiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/as/model/vast/MediaFile;

    .line 210
    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/MediaFile;->getApiFramework()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/MediaFile;->getApiFramework()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VPAID"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/MediaFile;->getMimeType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/MediaFile;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/javascript"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 216
    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/MediaFile;->getMediaUri()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/MediaFile;->getMediaUri()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v3, v1

    .line 236
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/MediaFile;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/MediaFile;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 240
    new-instance v1, Lcom/fusepowered/as/model/vast/Vpaid;

    invoke-direct {v1, v0, v3, v2}, Lcom/fusepowered/as/model/vast/Vpaid;-><init>(Lcom/fusepowered/as/model/vast/Ad;Lcom/fusepowered/as/model/vast/Creative;Lcom/fusepowered/as/model/vast/MediaFile;)V

    iput-object v1, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vpaid:Lcom/fusepowered/as/model/vast/Vpaid;

    .line 243
    :cond_3
    invoke-interface {p1, p0}, Lcom/fusepowered/as/controller/listener/AdFactoryListener;->adBuilt(Lcom/fusepowered/as/model/ad/ProviderAd;)V

    .line 244
    return-void

    :cond_4
    move-object v2, v3

    move-object v0, v3

    goto :goto_0
.end method

.method private static followVastWrapper(Lcom/fusepowered/as/model/vast/VAST;Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;)V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Wrapper;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Wrapper;->getAdTagUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/fusepowered/as/http/HttpTask;

    new-instance v2, Lcom/fusepowered/as/model/ad/VASTProviderAd$1;

    invoke-direct {v2, p1}, Lcom/fusepowered/as/model/ad/VASTProviderAd$1;-><init>(Lcom/fusepowered/as/controller/listener/VastWrapperCallerListener;)V

    invoke-direct {v1, v2}, Lcom/fusepowered/as/http/HttpTask;-><init>(Lcom/fusepowered/as/http/HttpTaskListener;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/http/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    return-void
.end method

.method private getAllWrapperCompanionClickTrackingUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/as/model/vast/VAST;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Wrapper;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Wrapper;->getCreatives()Lcom/fusepowered/as/model/vast/Creatives;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Creatives;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Creative;

    .line 326
    instance-of v3, v0, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;

    if-eqz v3, :cond_0

    .line 327
    check-cast v0, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/CompanionAdsCreative;->getCompanionAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/CompanionAd;

    .line 328
    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/CompanionAd;->getClickTrackingUris()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getWrappedVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperCompanionClickTrackingUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 335
    :cond_2
    return-object v1
.end method

.method private getAllWrapperErrorUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/as/model/vast/VAST;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Wrapper;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Wrapper;->getErrorUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getWrappedVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperErrorUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    :cond_0
    return-object v1
.end method

.method private getAllWrapperImpressionUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/as/model/vast/VAST;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Wrapper;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Wrapper;->getImpressionUris()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getWrappedVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperImpressionUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    :cond_0
    return-object v1
.end method

.method private getAllWrapperLinearClickTrackingUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/as/model/vast/VAST;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Wrapper;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Wrapper;->getCreatives()Lcom/fusepowered/as/model/vast/Creatives;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Creatives;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Creative;

    .line 279
    instance-of v3, v0, Lcom/fusepowered/as/model/vast/LinearCreative;

    if-eqz v3, :cond_0

    .line 280
    check-cast v0, Lcom/fusepowered/as/model/vast/LinearCreative;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/LinearCreative;->getClickTrackingUris()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getWrappedVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearClickTrackingUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    :cond_2
    return-object v1
.end method

.method private getAllWrapperLinearCreativeTrackingEvents(Lcom/fusepowered/as/model/vast/VAST;)Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 4

    .prologue
    .line 247
    new-instance v1, Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v1}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>()V

    .line 249
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Wrapper;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Wrapper;->getCreatives()Lcom/fusepowered/as/model/vast/Creatives;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Creatives;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Creative;

    .line 251
    instance-of v3, v0, Lcom/fusepowered/as/model/vast/LinearCreative;

    if-eqz v3, :cond_0

    .line 252
    check-cast v0, Lcom/fusepowered/as/model/vast/LinearCreative;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEvents()Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getWrappedVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEvents(Lcom/fusepowered/as/model/vast/VAST;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 258
    :cond_2
    return-object v1
.end method

.method private getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/VAST;Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 4

    .prologue
    .line 262
    new-instance v1, Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v1}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>()V

    .line 263
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Wrapper;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Wrapper;->getCreatives()Lcom/fusepowered/as/model/vast/Creatives;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Creatives;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Creative;

    .line 265
    instance-of v3, v0, Lcom/fusepowered/as/model/vast/LinearCreative;

    if-eqz v3, :cond_0

    .line 266
    check-cast v0, Lcom/fusepowered/as/model/vast/LinearCreative;

    invoke-virtual {v0, p2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getWrappedVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/VAST;Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 272
    :cond_2
    return-object v1
.end method

.method private getAllWrapperLinearCustomClickUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/as/model/vast/VAST;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Wrapper;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Wrapper;->getCreatives()Lcom/fusepowered/as/model/vast/Creatives;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Creatives;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Creative;

    .line 293
    instance-of v3, v0, Lcom/fusepowered/as/model/vast/LinearCreative;

    if-eqz v3, :cond_0

    .line 294
    check-cast v0, Lcom/fusepowered/as/model/vast/LinearCreative;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/LinearCreative;->getCustomClickTrackingUris()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getWrappedVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCustomClickUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    :cond_2
    return-object v1
.end method

.method private getAllWrapperNonLinearClickTrackingUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/as/model/vast/VAST;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v0, :cond_2

    .line 354
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Wrapper;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Wrapper;->getCreatives()Lcom/fusepowered/as/model/vast/Creatives;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Creatives;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Creative;

    .line 355
    instance-of v3, v0, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;

    if-eqz v3, :cond_0

    .line 356
    check-cast v0, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->getNonLinearAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/NonLinearAd;

    .line 357
    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/NonLinearAd;->getClickTrackingUris()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getWrappedVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperNonLinearClickTrackingUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 364
    :cond_2
    return-object v1
.end method

.method private getAllWrapperNonLinearTrackingEvents(Lcom/fusepowered/as/model/vast/VAST;)Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 4

    .prologue
    .line 339
    new-instance v1, Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v1}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>()V

    .line 340
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Wrapper;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Wrapper;->getCreatives()Lcom/fusepowered/as/model/vast/Creatives;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Creatives;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/Creative;

    .line 342
    instance-of v3, v0, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;

    if-eqz v3, :cond_0

    .line 343
    check-cast v0, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/NonLinearAdsCreative;->getTrackingEvents()Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getWrappedVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperNonLinearTrackingEvents(Lcom/fusepowered/as/model/vast/VAST;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 348
    :cond_2
    return-object v1
.end method

.method private getFirstPlayableVAST(Lcom/fusepowered/as/model/vast/VAST;)Lcom/fusepowered/as/model/vast/VAST;
    .locals 1

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 170
    const/4 p1, 0x0

    .line 179
    :cond_0
    :goto_0
    return-object p1

    .line 174
    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getAds()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fusepowered/as/model/vast/Wrapper;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/fusepowered/as/model/vast/VAST;->getWrappedVAST()Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getFirstPlayableVAST(Lcom/fusepowered/as/model/vast/VAST;)Lcom/fusepowered/as/model/vast/VAST;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getAdType()Lcom/fusepowered/as/model/ad/AdType;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/fusepowered/as/model/ad/AdType;->VAST:Lcom/fusepowered/as/model/ad/AdType;

    return-object v0
.end method

.method public getAllWrapperCompanionClickTrackingUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperCompanionClickTrackingUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllWrapperErrorUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperErrorUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllWrapperImpressionUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperImpressionUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllWrapperLinearClickTrackingUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearClickTrackingUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllWrapperLinearCreativeTrackingEvents()Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEvents(Lcom/fusepowered/as/model/vast/VAST;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    return-object v0
.end method

.method public getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0, v0, p1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/VAST;Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    return-object v0
.end method

.method public getAllWrapperLinearCustomClickUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCustomClickUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllWrapperNonLinearClickTrackingUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperNonLinearClickTrackingUris(Lcom/fusepowered/as/model/vast/VAST;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllWrapperNonLinearTrackingEvents()Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperNonLinearTrackingEvents(Lcom/fusepowered/as/model/vast/VAST;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v0

    return-object v0
.end method

.method public getCloseOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->closeOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstPlayableVAST()Lcom/fusepowered/as/model/vast/VAST;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    invoke-direct {p0, v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getFirstPlayableVAST(Lcom/fusepowered/as/model/vast/VAST;)Lcom/fusepowered/as/model/vast/VAST;

    move-result-object v0

    return-object v0
.end method

.method public getIsShowAdCommandRequiredOnPreload()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "ASAerServ"

    return-object v0
.end method

.method public getVast()Lcom/fusepowered/as/model/vast/VAST;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vast:Lcom/fusepowered/as/model/vast/VAST;

    return-object v0
.end method

.method public getVirtualCurrency()Lcom/fusepowered/as/AerServVirtualCurrency;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->virtualCurrencyData:Lcom/fusepowered/as/AerServVirtualCurrency;

    return-object v0
.end method

.method public getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->vpaid:Lcom/fusepowered/as/model/vast/Vpaid;

    return-object v0
.end method

.method public isVirtualCurrencyEnabled()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/fusepowered/as/model/ad/VASTProviderAd;->virtualCurrencyEnabled:Z

    return v0
.end method
