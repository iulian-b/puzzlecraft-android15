.class public Lcom/fusepowered/m2/common/event/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# instance fields
.field private final mEventRecorders:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fusepowered/m2/common/event/EventRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mLooper:Landroid/os/Looper;

.field private final mMessageHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fusepowered/m2/common/event/EventRecorder;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "recorders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/fusepowered/m2/common/event/EventRecorder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fusepowered/m2/common/event/EventDispatcher;->mEventRecorders:Ljava/lang/Iterable;

    .line 19
    iput-object p2, p0, Lcom/fusepowered/m2/common/event/EventDispatcher;->mLooper:Landroid/os/Looper;

    .line 20
    new-instance v0, Lcom/fusepowered/m2/common/event/EventDispatcher$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/common/event/EventDispatcher$1;-><init>(Lcom/fusepowered/m2/common/event/EventDispatcher;)V

    iput-object v0, p0, Lcom/fusepowered/m2/common/event/EventDispatcher;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 33
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/common/event/EventDispatcher;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/fusepowered/m2/common/event/EventDispatcher;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fusepowered/m2/common/event/EventDispatcher;->mMessageHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/common/event/EventDispatcher;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/common/event/EventDispatcher;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/fusepowered/m2/common/event/EventDispatcher;->mEventRecorders:Ljava/lang/Iterable;

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/fusepowered/m2/common/event/BaseEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/fusepowered/m2/common/event/BaseEvent;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m2/common/event/EventDispatcher;->mMessageHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 38
    return-void
.end method

.method getEventRecorders()Ljava/lang/Iterable;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fusepowered/m2/common/event/EventRecorder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/m2/common/event/EventDispatcher;->mEventRecorders:Ljava/lang/Iterable;

    return-object v0
.end method

.method getHandlerCallback()Landroid/os/Handler$Callback;
    .locals 1
    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fusepowered/m2/common/event/EventDispatcher;->mHandlerCallback:Landroid/os/Handler$Callback;

    return-object v0
.end method
