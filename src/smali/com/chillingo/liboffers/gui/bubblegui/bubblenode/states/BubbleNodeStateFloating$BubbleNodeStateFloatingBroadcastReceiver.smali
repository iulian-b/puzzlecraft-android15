.class Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BubbleNodeStateFloating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BubbleNodeStateFloatingBroadcastReceiver"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;Landroid/content/Context;)V
    .locals 3
    .param p2, "owner"    # Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->this$0:Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;

    .line 115
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    .line 118
    iput-object p3, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->context:Landroid/content/Context;

    .line 121
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "dismissoffers"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 122
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "offerActivationTransactionBegin"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 123
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "offerActivationTransactionEnd"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "action":Ljava/lang/String;
    const-string v2, "dismissoffers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;

    .line 134
    .local v1, "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;
    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1, p2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->dismissOffer(Landroid/content/Intent;)V

    .line 149
    .end local v1    # "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const-string v2, "offerActivationTransactionBegin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;

    .line 140
    .restart local v1    # "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1, p2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->offerActivationTransactionBegin(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    .end local v1    # "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;
    :cond_2
    const-string v2, "offerActivationTransactionEnd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;

    .line 146
    .restart local v1    # "object":Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;
    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1, p2}, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating;->offerActivationTransactionEnd(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/states/BubbleNodeStateFloating$BubbleNodeStateFloatingBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    return-void
.end method
