.class final Lcom/fusepowered/m2/nativeads/MoPubNative$1;
.super Ljava/lang/Object;
.source "MoPubNative.java"

# interfaces
.implements Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/nativeads/MoPubNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/fusepowered/m2/nativeads/NativeErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/fusepowered/m2/nativeads/NativeErrorCode;

    .prologue
    .line 54
    return-void
.end method

.method public onNativeLoad(Lcom/fusepowered/m2/nativeads/NativeResponse;)V
    .locals 0
    .param p1, "nativeResponse"    # Lcom/fusepowered/m2/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/fusepowered/m2/nativeads/NativeResponse;->destroy()V

    .line 51
    return-void
.end method
