.class Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$2;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->createSession(Lcom/fusepowered/nx/common/OnTaskCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

.field final synthetic val$listener:Lcom/fusepowered/nx/common/OnTaskCompletedListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;Lcom/fusepowered/nx/common/OnTaskCompletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$2;->this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$2;->val$listener:Lcom/fusepowered/nx/common/OnTaskCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/fusepowered/nx/network/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/fusepowered/nx/network/volley/VolleyError;

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Response obtained for CreateSession request. "

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

    .line 134
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->access$002(Z)Z

    .line 135
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$2;->val$listener:Lcom/fusepowered/nx/common/OnTaskCompletedListener;

    invoke-interface {v0}, Lcom/fusepowered/nx/common/OnTaskCompletedListener;->onTaskCompleted()V

    .line 136
    return-void
.end method
