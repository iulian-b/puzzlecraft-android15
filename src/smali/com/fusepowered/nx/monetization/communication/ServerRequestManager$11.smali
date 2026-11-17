.class Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$11;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getRichMedia(Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fusepowered/nx/network/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

.field final synthetic val$listener:Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$11;->this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$11;->val$listener:Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 342
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$11;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "responseData"    # Ljava/lang/String;

    .prologue
    .line 345
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$11;->val$listener:Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;

    const-string v1, "NO AD"

    invoke-interface {v0, v1, p1}, Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;->downloadComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$11;->val$listener:Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/fusepowered/nx/monetization/listeners/onRichMediaDownloadedListener;->downloadComplete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
