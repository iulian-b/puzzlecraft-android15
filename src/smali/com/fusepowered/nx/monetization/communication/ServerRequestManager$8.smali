.class Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$8;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;->actionTaken(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/communication/ServerRequestManager$8;->this$0:Lcom/fusepowered/nx/monetization/communication/ServerRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/fusepowered/nx/network/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/fusepowered/nx/network/volley/VolleyError;

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Response obtained for ActionTaken request."

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

    .line 272
    return-void
.end method
