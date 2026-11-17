.class public Lcom/chillingo/liboffers/gui/misc/UpdateProxy;
.super Ljava/lang/Object;
.source "UpdateProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/gui/misc/UpdateProxy$2;
    }
.end annotation


# static fields
.field private static ENABLE_PROXY_LOGGING:Z

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/gui/misc/UpdateProxyDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

.field private thread:Ljava/lang/Thread;

.field private timer:Ljava/util/Timer;

.field private updateInterval:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "UpdateProxy"

    sput-object v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->LOG_TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->ENABLE_PROXY_LOGGING:Z

    return-void
.end method

.method public constructor <init>(Lcom/chillingo/liboffers/gui/misc/UpdateProxyDelegate;Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    .locals 2
    .param p1, "proxyDelegate"    # Lcom/chillingo/liboffers/gui/misc/UpdateProxyDelegate;
    .param p2, "method"    # Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;
    .param p3, "interval"    # Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->delegate:Ljava/lang/ref/WeakReference;

    .line 30
    iput-object v1, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->timer:Ljava/util/Timer;

    .line 31
    iput-object v1, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->thread:Ljava/lang/Thread;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->delegate:Ljava/lang/ref/WeakReference;

    .line 35
    iput-object p2, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .line 37
    invoke-virtual {p0, p3}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->startUpdating(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V

    .line 38
    return-void
.end method


# virtual methods
.method createStandardTimer(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    .locals 8
    .param p1, "frameInterval"    # Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .prologue
    .line 50
    sget-object v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createStandardTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->ENABLE_PROXY_LOGGING:Z

    invoke-static {v0, v2, v3}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 52
    const-wide v2, 0x3f91111111111111L    # 0.016666666666666666

    invoke-virtual {p1}, Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;->getValue()I

    move-result v0

    int-to-double v4, v0

    mul-double v6, v2, v4

    .line 54
    .local v6, "timeInterval":D
    iput-wide v6, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->updateInterval:D

    .line 56
    new-instance v0, Ljava/util/Timer;

    const-string v2, "offersgui"

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->timer:Ljava/util/Timer;

    .line 58
    new-instance v1, Lcom/chillingo/liboffers/gui/misc/UpdateProxy$1;

    invoke-direct {v1, p0}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy$1;-><init>(Lcom/chillingo/liboffers/gui/misc/UpdateProxy;)V

    .line 65
    .local v1, "task":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 66
    return-void
.end method

.method public createThread(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    .locals 0
    .param p1, "frameInterval"    # Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .prologue
    .line 90
    return-void
.end method

.method public destroyStandardTimer()V
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "destroyStandardTimer"

    sget-boolean v2, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->ENABLE_PROXY_LOGGING:Z

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 72
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->timer:Ljava/util/Timer;

    .line 74
    return-void
.end method

.method public destroyThread()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public setUpdateMethod(Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;)V
    .locals 0
    .param p1, "method"    # Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    .line 206
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->stopUpdating()V

    .line 43
    return-void
.end method

.method public startUpdating(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    .locals 3
    .param p1, "frameInterval"    # Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;

    .prologue
    .line 119
    sget-object v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUpdating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->ENABLE_PROXY_LOGGING:Z

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 127
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->stopUpdating()V

    .line 135
    :cond_1
    sget-object v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy$2;->$SwitchMap$com$chillingo$liboffers$OfferSession$OffersUpdateMethod:[I

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 138
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->createStandardTimer(Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public stopUpdating()V
    .locals 3

    .prologue
    .line 149
    sget-object v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "stopUpdating"

    sget-boolean v2, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->ENABLE_PROXY_LOGGING:Z

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/utils/OffersLog;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 151
    sget-object v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy$2;->$SwitchMap$com$chillingo$liboffers$OfferSession$OffersUpdateMethod:[I

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 154
    :pswitch_0
    invoke-virtual {p0}, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->destroyStandardTimer()V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public threadUpdate()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxyDelegate;

    .line 168
    .local v0, "delegate":Lcom/chillingo/liboffers/gui/misc/UpdateProxyDelegate;
    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Lcom/chillingo/liboffers/gui/misc/UpdateProxyDelegate;->doUpdate()V

    .line 170
    :cond_0
    return-void
.end method

.method public updateMethod()Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy;->offersUpdateMethod:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    return-object v0
.end method
