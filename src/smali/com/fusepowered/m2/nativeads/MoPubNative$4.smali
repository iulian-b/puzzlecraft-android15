.class Lcom/fusepowered/m2/nativeads/MoPubNative$4;
.super Ljava/lang/Object;
.source "MoPubNative.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/MoPubNative;->onAdLoad(Lcom/fusepowered/m2/network/AdResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/MoPubNative;

.field final synthetic val$response:Lcom/fusepowered/m2/network/AdResponse;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/MoPubNative;Lcom/fusepowered/m2/network/AdResponse;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$4;->this$0:Lcom/fusepowered/m2/nativeads/MoPubNative;

    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$4;->val$response:Lcom/fusepowered/m2/network/AdResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdFailed(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$4;->this$0:Lcom/fusepowered/m2/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$4;->val$response:Lcom/fusepowered/m2/network/AdResponse;

    invoke-virtual {v1}, Lcom/fusepowered/m2/network/AdResponse;->getFailoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/nativeads/MoPubNative;->requestNativeAd(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onNativeAdLoaded(Lcom/fusepowered/m2/nativeads/NativeAdInterface;)V
    .locals 8
    .param p1, "nativeAd"    # Lcom/fusepowered/m2/nativeads/NativeAdInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$4;->this$0:Lcom/fusepowered/m2/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/fusepowered/m2/nativeads/MoPubNative;->getContextOrDestroy()Landroid/content/Context;

    move-result-object v1

    .line 230
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$4;->this$0:Lcom/fusepowered/m2/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/fusepowered/m2/nativeads/MoPubNative;->access$300(Lcom/fusepowered/m2/nativeads/MoPubNative;)Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;

    move-result-object v7

    new-instance v0, Lcom/fusepowered/m2/nativeads/NativeResponse;

    iget-object v2, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$4;->val$response:Lcom/fusepowered/m2/network/AdResponse;

    invoke-virtual {v2}, Lcom/fusepowered/m2/network/AdResponse;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$4;->val$response:Lcom/fusepowered/m2/network/AdResponse;

    invoke-virtual {v3}, Lcom/fusepowered/m2/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$4;->this$0:Lcom/fusepowered/m2/nativeads/MoPubNative;

    invoke-static {v4}, Lcom/fusepowered/m2/nativeads/MoPubNative;->access$100(Lcom/fusepowered/m2/nativeads/MoPubNative;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$4;->this$0:Lcom/fusepowered/m2/nativeads/MoPubNative;

    invoke-static {v5}, Lcom/fusepowered/m2/nativeads/MoPubNative;->access$200(Lcom/fusepowered/m2/nativeads/MoPubNative;)Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;

    move-result-object v6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/m2/nativeads/NativeResponse;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/nativeads/NativeAdInterface;Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;)V

    invoke-interface {v7, v0}, Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeLoad(Lcom/fusepowered/m2/nativeads/NativeResponse;)V

    goto :goto_0
.end method
