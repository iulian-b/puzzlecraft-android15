.class Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;
.super Ljava/lang/Object;
.source "MoPubCustomEventNative.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/CustomEventNative$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;->this$0:Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagesCached()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;->this$0:Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;

    invoke-static {v0}, Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->access$000(Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;)Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;->this$0:Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/fusepowered/m2/nativeads/NativeAdInterface;)V

    .line 92
    return-void
.end method

.method public onImagesFailedToCache(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;->this$0:Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;

    invoke-static {v0}, Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->access$000(Lcom/fusepowered/m2/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;)Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V

    .line 97
    return-void
.end method
