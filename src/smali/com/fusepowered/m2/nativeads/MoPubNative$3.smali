.class Lcom/fusepowered/m2/nativeads/MoPubNative$3;
.super Ljava/lang/Object;
.source "MoPubNative.java"

# interfaces
.implements Lcom/fusepowered/m2/network/AdRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/nativeads/MoPubNative$MoPubNativeNetworkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/MoPubNative;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/MoPubNative;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$3;->this$0:Lcom/fusepowered/m2/nativeads/MoPubNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/fusepowered/m2/volley/VolleyError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$3;->this$0:Lcom/fusepowered/m2/nativeads/MoPubNative;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubNative;->onAdError(Lcom/fusepowered/m2/volley/VolleyError;)V

    .line 126
    return-void
.end method

.method public onSuccess(Lcom/fusepowered/m2/network/AdResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/fusepowered/m2/network/AdResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubNative$3;->this$0:Lcom/fusepowered/m2/nativeads/MoPubNative;

    invoke-static {v0, p1}, Lcom/fusepowered/m2/nativeads/MoPubNative;->access$000(Lcom/fusepowered/m2/nativeads/MoPubNative;Lcom/fusepowered/m2/network/AdResponse;)V

    .line 121
    return-void
.end method
