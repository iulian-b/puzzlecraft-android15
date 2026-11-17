.class final Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;
.super Ljava/lang/Object;
.source "MRAIDManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->fireListener(Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Lcom/fusepowered/nx/monetization/enums/AdEvent;

.field final synthetic val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$placement:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$event:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    iput-object p3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$placement:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    if-eqz v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    instance-of v2, v2, Lcom/fusepowered/nx/monetization/listeners/OnAdEvent;

    if-eqz v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    check-cast v2, Lcom/fusepowered/nx/monetization/listeners/OnAdEvent;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$event:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$message:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/fusepowered/nx/monetization/listeners/OnAdEvent;->onEvent(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    instance-of v2, v2, Lcom/fusepowered/nx/monetization/listeners/OnAdEventV2;

    if-eqz v2, :cond_0

    .line 402
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/AdInfo;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;-><init>()V

    .line 403
    .local v0, "adInfo":Lcom/fusepowered/nx/monetization/mraid/AdInfo;
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$placement:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fusepowered/nx/monetization/mraid/AdInfo;->setPlacement(Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    check-cast v2, Lcom/fusepowered/nx/monetization/listeners/OnAdEventV2;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$event:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$1;->val$message:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v4}, Lcom/fusepowered/nx/monetization/listeners/OnAdEventV2;->onEvent(Lcom/fusepowered/nx/monetization/enums/AdEvent;Lcom/fusepowered/nx/monetization/mraid/AdInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    .end local v0    # "adInfo":Lcom/fusepowered/nx/monetization/mraid/AdInfo;
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unhandled exception"

    invoke-static {v2, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
