.class Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$9;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getOfferCache(Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;)V
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
        "Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

.field final synthetic val$listener:Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$9;->this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$9;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;)V
    .locals 2
    .param p1, "responseData"    # Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$9;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;->downloadComplete(Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$9;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fusepowered/nx/monetization/listeners/OnGetCacheDownloadCompletedListener;->downloadComplete(Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 303
    check-cast p1, Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;

    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$9;->onResponse(Lcom/fusepowered/nx/monetization/business/GetOfferCacheResponseData;)V

    return-void
.end method
