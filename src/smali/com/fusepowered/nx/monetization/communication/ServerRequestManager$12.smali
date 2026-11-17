.class Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$12;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getRichMedia(Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

.field final synthetic val$listener:Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$12;->this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$12;->val$listener:Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/fusepowered/nx/network/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/fusepowered/nx/network/volley/VolleyError;

    .prologue
    const/4 v2, 0x0

    .line 354
    instance-of v0, p1, Lcom/fusepowered/nx/network/volley/ServerError;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p1}, Lcom/fusepowered/nx/network/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerRequestManager: Error Response obtained for RichMedia request. Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/nx/network/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$12;->val$listener:Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;

    invoke-interface {v0, v2, v2}, Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;->downloadComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerRequestManager: Error Response obtained for RichMedia request. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerRequestManager: Error Response obtained for RichMedia request. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
