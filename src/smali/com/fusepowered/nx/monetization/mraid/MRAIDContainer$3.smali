.class Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$3;
.super Ljava/lang/Object;
.source "MRAIDContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

.field final synthetic val$commandWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

.field final synthetic val$instance:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$3;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$3;->val$commandWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    iput-object p3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$3;->val$instance:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1361
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$3;->val$commandWebView:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$3;->val$instance:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    invoke-virtual {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :goto_0
    return-void

    .line 1362
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$3;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    const-string v3, "Unhandled exception"

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$3;->val$instance:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;->getCommand()Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1365
    :catch_1
    move-exception v1

    .line 1366
    .local v1, "e2":Ljava/lang/Exception;
    const-string v2, "Unhandled exception (and can\'t fire error event)"

    invoke-static {v2, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
