.class Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer$MRAIDContainerInnerHandler;
.super Landroid/os/Handler;
.source "MRAIDContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MRAIDContainerInnerHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1532
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1533
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1538
    const/4 v0, 0x0

    .line 1539
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_0

    .line 1540
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 1542
    .restart local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_0
    if-nez v0, :cond_1

    .line 1563
    :goto_0
    return-void

    .line 1546
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1548
    :pswitch_0
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->bringToFront()V

    goto :goto_0

    .line 1552
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$700(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;I)Z

    goto :goto_0

    .line 1556
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->loadData(I)V

    goto :goto_0

    .line 1560
    :pswitch_3
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->access$600(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    goto :goto_0

    .line 1546
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
