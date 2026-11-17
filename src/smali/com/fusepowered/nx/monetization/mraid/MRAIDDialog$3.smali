.class Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$3;
.super Ljava/lang/Object;
.source "MRAIDDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;
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
    .line 135
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$3;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$3;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->access$100(Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->detachFromParent()V

    .line 141
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog$3;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;->access$102(Lcom/fusepowered/nx/monetization/mraid/MRAIDDialog;Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 143
    const-string v1, "The WebView is detached from its parent"

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "The WebView failed to detach from its parent"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
