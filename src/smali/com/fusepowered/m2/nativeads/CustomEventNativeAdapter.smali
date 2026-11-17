.class final Lcom/fusepowered/m2/nativeads/CustomEventNativeAdapter;
.super Ljava/lang/Object;
.source "CustomEventNativeAdapter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadNativeAd(Landroid/content/Context;Ljava/util/Map;Lcom/fusepowered/m2/network/AdResponse;Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adResponse"    # Lcom/fusepowered/m2/network/AdResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "customEventNativeListener"    # Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fusepowered/m2/network/AdResponse;",
            "Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/fusepowered/m2/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "customEventNativeClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/fusepowered/m2/nativeads/factories/CustomEventNativeFactory;->create(Ljava/lang/String;)Lcom/fusepowered/m2/nativeads/CustomEventNative;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    .local v0, "customEventNative":Lcom/fusepowered/m2/nativeads/CustomEventNative;
    invoke-virtual {p2}, Lcom/fusepowered/m2/network/AdResponse;->hasJson()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    const-string v3, "com_mopub_native_json"

    invoke-virtual {p2}, Lcom/fusepowered/m2/network/AdResponse;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/fusepowered/m2/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, p0, p3, p1, v3}, Lcom/fusepowered/m2/nativeads/CustomEventNative;->loadNativeAd(Landroid/content/Context;Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .end local v0    # "customEventNative":Lcom/fusepowered/m2/nativeads/CustomEventNative;
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v2

    .line 26
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load Custom Event Native class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 27
    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->NATIVE_ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {p3, v3}, Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 43
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "customEventNative":Lcom/fusepowered/m2/nativeads/CustomEventNative;
    :catch_1
    move-exception v2

    .line 44
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "Loading custom event native threw an error."

    invoke-static {v3, v2}, Lcom/fusepowered/m2/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    sget-object v3, Lcom/fusepowered/m2/nativeads/NativeErrorCode;->NATIVE_ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    invoke-interface {p3, v3}, Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    goto :goto_0
.end method
