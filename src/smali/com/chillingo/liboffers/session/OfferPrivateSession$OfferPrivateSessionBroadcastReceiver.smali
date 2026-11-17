.class Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OfferPrivateSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/session/OfferPrivateSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OfferPrivateSessionBroadcastReceiver"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/liboffers/session/OfferPrivateSession;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession;


# direct methods
.method public constructor <init>(Lcom/chillingo/liboffers/session/OfferPrivateSession;Lcom/chillingo/liboffers/session/OfferPrivateSession;Landroid/content/Context;)V
    .locals 3
    .param p2, "owner"    # Lcom/chillingo/liboffers/session/OfferPrivateSession;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;->this$0:Lcom/chillingo/liboffers/session/OfferPrivateSession;

    .line 91
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    .line 93
    iput-object p3, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;->context:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "offerBackgroundLayerActive"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "action":Ljava/lang/String;
    const-string v1, "offerBackgroundLayerActive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/liboffers/session/OfferPrivateSession;

    invoke-virtual {v1, p2}, Lcom/chillingo/liboffers/session/OfferPrivateSession;->offerBackgroundChanged(Landroid/content/Intent;)V

    .line 108
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/chillingo/liboffers/session/OfferPrivateSession$OfferPrivateSessionBroadcastReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    return-void
.end method
