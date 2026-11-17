.class Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$1;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->createSession(Lcom/fusepowered/nx/common/OnTaskCompletedListener;)V
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
        "Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

.field final synthetic val$listener:Lcom/fusepowered/nx/common/OnTaskCompletedListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/common/OnTaskCompletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$1;->this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$1;->val$listener:Lcom/fusepowered/nx/common/OnTaskCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;)V
    .locals 2
    .param p1, "sessionResponse"    # Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    .prologue
    .line 122
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->access$002(Z)Z

    .line 123
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$1;->this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->access$100(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;)Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fusepowered/nx/monetization/communication/ServerResponseHandler;->handleCreateSession(Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$1;->val$listener:Lcom/fusepowered/nx/common/OnTaskCompletedListener;

    invoke-interface {v1}, Lcom/fusepowered/nx/common/OnTaskCompletedListener;->onTaskCompleted()V

    .line 129
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;

    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$1;->onResponse(Lcom/fusepowered/nx/monetization/business/CreateSessionResponseData;)V

    return-void
.end method
