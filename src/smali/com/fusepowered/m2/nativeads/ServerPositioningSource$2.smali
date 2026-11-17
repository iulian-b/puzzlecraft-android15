.class Lcom/fusepowered/m2/nativeads/ServerPositioningSource$2;
.super Ljava/lang/Object;
.source "ServerPositioningSource.java"

# interfaces
.implements Lcom/fusepowered/m2/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/ServerPositioningSource;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fusepowered/m2/volley/Response$Listener",
        "<",
        "Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/ServerPositioningSource;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$2;->this$0:Lcom/fusepowered/m2/nativeads/ServerPositioningSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 1
    .param p1, "clientPositioning"    # Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$2;->this$0:Lcom/fusepowered/m2/nativeads/ServerPositioningSource;

    invoke-static {v0, p1}, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->access$100(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 85
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$2;->onResponse(Lcom/fusepowered/m2/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    return-void
.end method
