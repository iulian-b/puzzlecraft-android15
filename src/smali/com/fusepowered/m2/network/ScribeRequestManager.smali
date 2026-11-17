.class public Lcom/fusepowered/m2/network/ScribeRequestManager;
.super Lcom/fusepowered/m2/network/RequestManager;
.source "ScribeRequestManager.java"

# interfaces
.implements Lcom/fusepowered/m2/network/ScribeRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/m2/network/RequestManager",
        "<",
        "Lcom/fusepowered/m2/network/ScribeRequest$ScribeRequestFactory;",
        ">;",
        "Lcom/fusepowered/m2/network/ScribeRequest$Listener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/network/RequestManager;-><init>(Landroid/os/Looper;)V

    .line 20
    return-void
.end method


# virtual methods
.method createRequest()Lcom/fusepowered/m2/volley/Request;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/m2/network/ScribeRequestManager;->mRequestFactory:Lcom/fusepowered/m2/network/RequestManager$RequestFactory;

    check-cast v0, Lcom/fusepowered/m2/network/ScribeRequest$ScribeRequestFactory;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/network/ScribeRequest$ScribeRequestFactory;->createRequest(Lcom/fusepowered/m2/network/ScribeRequest$Listener;)Lcom/fusepowered/m2/network/ScribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public onErrorResponse(Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/fusepowered/m2/volley/VolleyError;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fusepowered/m2/network/ScribeRequestManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/m2/network/ScribeRequestManager$2;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/m2/network/ScribeRequestManager$2;-><init>(Lcom/fusepowered/m2/network/ScribeRequestManager;Lcom/fusepowered/m2/volley/VolleyError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method

.method public onResponse()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "Successfully scribed events"

    invoke-static {v0}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/fusepowered/m2/network/ScribeRequestManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/m2/network/ScribeRequestManager$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/network/ScribeRequestManager$1;-><init>(Lcom/fusepowered/m2/network/ScribeRequestManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method
