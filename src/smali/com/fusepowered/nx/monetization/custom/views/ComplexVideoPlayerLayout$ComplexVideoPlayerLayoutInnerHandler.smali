.class Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;
.super Landroid/os/Handler;
.source "ComplexVideoPlayerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComplexVideoPlayerLayoutInnerHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 259
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "layout":Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    if-eqz v1, :cond_0

    .line 266
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "layout":Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
    check-cast v0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .line 268
    .restart local v0    # "layout":Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
    :cond_0
    if-eqz v0, :cond_1

    .line 270
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 305
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 272
    :pswitch_1
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$ComplexVideoPlayerLayoutInnerHandler;->removeMessages(I)V

    .line 273
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$700(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 277
    :pswitch_2
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$800(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 281
    :pswitch_3
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$900(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 285
    :pswitch_4
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$1000(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 289
    :pswitch_5
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$1100(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 301
    :pswitch_6
    invoke-static {v0}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$1200(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
