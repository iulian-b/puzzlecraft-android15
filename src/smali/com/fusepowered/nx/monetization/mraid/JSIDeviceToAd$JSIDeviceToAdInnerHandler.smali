.class Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;
.super Landroid/os/Handler;
.source "JSIDeviceToAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JSIDeviceToAdInnerHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 301
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 306
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    if-eqz v0, :cond_0

    .line 307
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$JSIDeviceToAdInnerHandler;->removeMessages(I)V

    .line 308
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/JSIDeviceToAd$DelayedErrors;->executeCommands()V

    .line 310
    :cond_0
    return-void
.end method
