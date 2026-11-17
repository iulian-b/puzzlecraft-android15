.class Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;
.super Ljava/lang/Object;
.source "MRAIDContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

.field final synthetic val$event:Lcom/fusepowered/nx/monetization/enums/AdEvent;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->val$event:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    iput-object p3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1723
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1724
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    move-result-object v1

    instance-of v1, v1, Lcom/fusepowered/nx/monetization/listeners/OnAdEvent;

    if-eqz v1, :cond_0

    .line 1725
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/nx/monetization/listeners/OnAdEvent;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->val$event:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->val$message:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/fusepowered/nx/monetization/listeners/OnAdEvent;->onEvent(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 1726
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    move-result-object v1

    instance-of v1, v1, Lcom/fusepowered/nx/monetization/listeners/OnAdEventV2;

    if-eqz v1, :cond_1

    .line 1727
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/nx/monetization/listeners/OnAdEventV2;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->val$event:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$900(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$4;->val$message:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/fusepowered/nx/monetization/listeners/OnAdEventV2;->onEvent(Lcom/fusepowered/nx/monetization/enums/AdEvent;Lcom/fusepowered/nx/monetization/mraid/AdInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    :cond_1
    :goto_0
    return-void

    .line 1730
    :catch_0
    move-exception v0

    .line 1731
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unhandled exception"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
