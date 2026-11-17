.class Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$2;
.super Ljava/lang/Object;
.source "MRAIDDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->setDialogContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$2;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$2;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->access$000(Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unhandled exception"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
