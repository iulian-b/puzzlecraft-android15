.class final Lcom/fusepowered/nx/common/billingtracking/BillingCallback$2;
.super Ljava/lang/Object;
.source "BillingCallback.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/common/billingtracking/BillingCallback;->trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/fusepowered/nx/network/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/fusepowered/nx/network/volley/VolleyError;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerRequestManager: Error obtained during InAppBilling request. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/fusepowered/nx/network/volley/VolleyError;->networkResponse:Lcom/fusepowered/nx/network/volley/NetworkResponse;

    invoke-virtual {v1}, Lcom/fusepowered/nx/network/volley/NetworkResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->d(Ljava/lang/String;)V

    .line 69
    return-void
.end method
