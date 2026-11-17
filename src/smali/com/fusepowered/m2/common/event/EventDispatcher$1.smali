.class Lcom/fusepowered/m2/common/event/EventDispatcher$1;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/common/event/EventDispatcher;-><init>(Ljava/lang/Iterable;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/common/event/EventDispatcher;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/common/event/EventDispatcher;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fusepowered/m2/common/event/EventDispatcher$1;->this$0:Lcom/fusepowered/m2/common/event/EventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 23
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/fusepowered/m2/common/event/BaseEvent;

    if-eqz v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/fusepowered/m2/common/event/EventDispatcher$1;->this$0:Lcom/fusepowered/m2/common/event/EventDispatcher;

    invoke-static {v2}, Lcom/fusepowered/m2/common/event/EventDispatcher;->access$000(Lcom/fusepowered/m2/common/event/EventDispatcher;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m2/common/event/EventRecorder;

    .line 25
    .local v1, "recorder":Lcom/fusepowered/m2/common/event/EventRecorder;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/fusepowered/m2/common/event/BaseEvent;

    invoke-interface {v1, v2}, Lcom/fusepowered/m2/common/event/EventRecorder;->record(Lcom/fusepowered/m2/common/event/BaseEvent;)V

    goto :goto_0

    .line 28
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "recorder":Lcom/fusepowered/m2/common/event/EventRecorder;
    :cond_0
    const-string v2, "EventDispatcher received non-BaseEvent message type."

    invoke-static {v2}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 30
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
