.class Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$3;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->getDeviceBalance()V
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
        "Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$3;->this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;)V
    .locals 3
    .param p1, "getDeviceBalance"    # Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 187
    .local v1, "getDeviceBalanceStillRunning":Z
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$3;->this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->access$100(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;)Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;->handleGetDeviceBalance(Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    :goto_0
    invoke-static {v1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->access$202(Z)Z

    .line 194
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    check-cast p1, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;

    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$3;->onResponse(Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceResponseData;)V

    return-void
.end method
