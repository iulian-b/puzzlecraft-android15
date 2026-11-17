.class Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$JSIAdToDeviceInnerHandler;
.super Landroid/os/Handler;
.source "JSIAdToDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JSIAdToDeviceInnerHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    if-eqz v1, :cond_0

    .line 65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;

    .line 66
    .local v0, "data":Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 126
    .end local v0    # "data":Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 68
    .restart local v0    # "data":Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;
    :pswitch_1
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->open(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->close()V

    goto :goto_0

    .line 74
    :pswitch_3
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->expand(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_4
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->setExpandProperties(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_5
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->setOrientationProperties(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_6
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->setResizeProperties(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_7
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->resize()V

    goto :goto_0

    .line 89
    :pswitch_8
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_9
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->loaded()V

    goto :goto_0

    .line 95
    :pswitch_a
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->playVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_b
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->storePicture(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_c
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->createCalendarEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :pswitch_d
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->useCustomClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :pswitch_e
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->setPageSize(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :pswitch_f
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->adConverted()V

    goto/16 :goto_0

    .line 113
    :pswitch_10
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->prepareVideo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :pswitch_11
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->setVideoOptions(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :pswitch_12
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->setWillCloseAdOnRedirect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :pswitch_13
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/fusepowered/nx/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/mraid/JSIAdToDeviceHandler;->enableCloseRegion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
