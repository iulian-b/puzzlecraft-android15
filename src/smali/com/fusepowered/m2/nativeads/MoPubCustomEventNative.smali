.class public Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative;
.super Lcom/fusepowered/m2/nativeads/CustomEventNative;
.source "MoPubCustomEventNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$1;,
        Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/fusepowered/m2/nativeads/CustomEventNative;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method protected loadNativeAd(Landroid/content/Context;Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "customEventNativeListener"    # Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "com_mopub_native_json"

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    .local v1, "json":Ljava/lang/Object;
    instance-of v3, v1, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    .line 38
    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->INVALID_JSON:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {p2, v3}, Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    .line 52
    .end local v1    # "json":Ljava/lang/Object;
    :goto_0
    return-void

    .line 42
    .restart local v1    # "json":Ljava/lang/Object;
    :cond_0
    new-instance v2, Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "json":Ljava/lang/Object;
    invoke-direct {v2, v3, v1, p2}, Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;)V

    .line 48
    .local v2, "moPubForwardingNativeAd":Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;
    :try_start_0
    invoke-virtual {v2}, Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->loadAd()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {p2, v3}, Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0
.end method
