.class Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;
.super Ljava/util/ArrayList;
.source "JSIDeviceToAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedErrors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3da2a07fa4bd2fd4L


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;


# direct methods
.method private constructor <init>(Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;->this$0:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;
    .param p2, "x1"    # Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$1;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;-><init>(Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized executeCommands()V
    .locals 5

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 294
    :goto_0
    monitor-exit p0

    return-void

    .line 284
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 285
    .local v1, "commandsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;>;"
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;->clear()V

    .line 286
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .local v0, "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    :try_start_2
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;->this$0:Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;

    invoke-static {v4}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->access$200(Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 289
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 281
    .end local v0    # "command":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;
    .end local v1    # "commandsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 293
    .restart local v1    # "commandsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommand;>;"
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;->runDelayed()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public runDelayed()V
    .locals 4

    .prologue
    const v2, 0x3b300

    .line 274
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->access$100()Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->access$100()Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;

    move-result-object v1

    invoke-virtual {v1, v2, p0}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 276
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;->access$100()Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 278
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
