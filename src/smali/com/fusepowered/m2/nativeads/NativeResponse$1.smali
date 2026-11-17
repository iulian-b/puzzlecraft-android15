.class Lcom/fusepowered/m2/nativeads/NativeResponse$1;
.super Ljava/lang/Object;
.source "NativeResponse.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/BaseForwardingNativeAd$NativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/NativeResponse;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/nativeads/NativeAdInterface;Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/NativeResponse;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/NativeResponse;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/NativeResponse$1;->this$0:Lcom/fusepowered/m2/nativeads/NativeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse$1;->this$0:Lcom/fusepowered/m2/nativeads/NativeResponse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/nativeads/NativeResponse;->handleClick(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public onAdImpressed()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse$1;->this$0:Lcom/fusepowered/m2/nativeads/NativeResponse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/nativeads/NativeResponse;->recordImpression(Landroid/view/View;)V

    .line 113
    return-void
.end method
