.class public Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BubbleNodeBroadcastReceiver.java"


# instance fields
.field private context:Landroid/content/Context;

.field private owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;Landroid/content/Context;)V
    .locals 3
    .param p1, "owner"    # Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object p2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->context:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "activateoffer"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 32
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "closeoffer"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 33
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "removenode"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 34
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "offerreleased"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    const-string v2, "activateoffer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    .line 46
    .local v1, "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v1, p2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->activateOffer(Landroid/content/Intent;)V

    .line 68
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "closeoffer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    .line 52
    .restart local v1    # "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v1, p2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->closeOffer(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    .end local v1    # "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
    :cond_2
    const-string v2, "removenode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    .line 58
    .restart local v1    # "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v1, p2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->removeNode(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    .end local v1    # "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
    :cond_3
    const-string v2, "offerreleased"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;

    .line 64
    .restart local v1    # "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v1, p2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;->offerReleased(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNodeBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    return-void
.end method
