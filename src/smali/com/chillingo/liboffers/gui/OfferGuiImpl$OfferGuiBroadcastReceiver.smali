.class Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OfferGuiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/gui/OfferGuiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OfferGuiBroadcastReceiver"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/gui/OfferGuiImpl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/chillingo/liboffers/gui/OfferGuiImpl;


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/gui/OfferGuiImpl;Lcom/chillingo/liboffers/gui/OfferGuiImpl;Landroid/content/Context;)V
    .locals 3
    .param p2, "owner"    # Lcom/chillingo/liboffers/gui/OfferGuiImpl;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->this$0:Lcom/chillingo/liboffers/gui/OfferGuiImpl;

    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    .line 86
    iput-object p3, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->context:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "shownextoffer"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 90
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "activateoffer"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 91
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "closeoffer"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 92
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "showbadgenotification"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    const-string v2, "shownextoffer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/OfferGuiImpl;

    .line 103
    .local v1, "object":Lcom/chillingo/liboffers/gui/OfferGuiImpl;
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1, p2}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->showNextOffer(Landroid/content/Intent;)V

    .line 128
    .end local v1    # "object":Lcom/chillingo/liboffers/gui/OfferGuiImpl;
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v2, "activateoffer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/OfferGuiImpl;

    .line 110
    .restart local v1    # "object":Lcom/chillingo/liboffers/gui/OfferGuiImpl;
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1, p2}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerActivated(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    .end local v1    # "object":Lcom/chillingo/liboffers/gui/OfferGuiImpl;
    :cond_2
    const-string v2, "closeoffer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/OfferGuiImpl;

    .line 117
    .restart local v1    # "object":Lcom/chillingo/liboffers/gui/OfferGuiImpl;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1, p2}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->offerClosed(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    .end local v1    # "object":Lcom/chillingo/liboffers/gui/OfferGuiImpl;
    :cond_3
    const-string v2, "showbadgenotification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/gui/OfferGuiImpl;

    .line 124
    .restart local v1    # "object":Lcom/chillingo/liboffers/gui/OfferGuiImpl;
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1, p2}, Lcom/chillingo/liboffers/gui/OfferGuiImpl;->showBadgeNotification(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/OfferGuiImpl$OfferGuiBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    return-void
.end method
