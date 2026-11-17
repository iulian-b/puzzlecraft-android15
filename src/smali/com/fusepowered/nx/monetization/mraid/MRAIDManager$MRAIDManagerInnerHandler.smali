.class Lcom/fusepowered/nx/monetization/mraid/MRAIDManager$MRAIDManagerInnerHandler;
.super Landroid/os/Handler;
.source "MRAIDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MRAIDManagerInnerHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 612
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 617
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_0

    .line 618
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    .line 619
    .local v0, "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 629
    .end local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 621
    .restart local v0    # "container":Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    :pswitch_0
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    goto :goto_0

    .line 625
    :pswitch_1
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->access$000(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
