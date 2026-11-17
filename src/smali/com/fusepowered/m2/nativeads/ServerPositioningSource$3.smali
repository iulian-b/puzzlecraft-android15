.class Lcom/fusepowered/m2/nativeads/ServerPositioningSource$3;
.super Ljava/lang/Object;
.source "ServerPositioningSource.java"

# interfaces
.implements Lcom/fusepowered/m2/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/ServerPositioningSource;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/ServerPositioningSource;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$3;->this$0:Lcom/fusepowered/m2/nativeads/ServerPositioningSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/fusepowered/m2/volley/VolleyError;

    .prologue
    .line 92
    instance-of v0, p1, Lcom/fusepowered/m2/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/fusepowered/m2/network/MoPubNetworkError;

    invoke-virtual {v0}, Lcom/fusepowered/m2/network/MoPubNetworkError;->getReason()Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/network/MoPubNetworkError$Reason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    const-string v0, "Failed to load positioning data"

    invoke-static {v0, p1}, Lcom/fusepowered/m2/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    iget-object v0, p1, Lcom/fusepowered/m2/volley/VolleyError;->networkResponse:Lcom/fusepowered/m2/volley/NetworkResponse;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$3;->this$0:Lcom/fusepowered/m2/nativeads/ServerPositioningSource;

    invoke-static {v0}, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->access$200(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    sget-object v0, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->c(Ljava/lang/String;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/ServerPositioningSource$3;->this$0:Lcom/fusepowered/m2/nativeads/ServerPositioningSource;

    invoke-static {v0}, Lcom/fusepowered/m2/nativeads/ServerPositioningSource;->access$300(Lcom/fusepowered/m2/nativeads/ServerPositioningSource;)V

    .line 101
    return-void
.end method
