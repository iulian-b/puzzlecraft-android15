.class public interface abstract Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleViewController;
.super Ljava/lang/Object;
.source "BubbleViewController.java"


# virtual methods
.method public abstract addBubbleViewFromClass(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract backgroundLayerEnabled()Z
.end method

.method public abstract cleanup()V
.end method

.method public abstract getVisibility()I
.end method

.method public abstract numberOfBubblesActive()I
.end method

.method public abstract offerReleased(Landroid/content/Intent;)V
.end method

.method public abstract offerRemoved(Landroid/content/Intent;)V
.end method

.method public abstract onBubbleViewAdded(Lcom/chillingo/liboffers/gui/bubblegui/ui/BubbleView;)V
.end method

.method public abstract parseProperties(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeBadgeNotification()V
.end method

.method public abstract setBackgroundLayerEnabled(Z)V
.end method

.method public abstract setTelemetryHandler(Lcom/chillingo/liboffers/partnerapi/OfferGuiTelemetryHandler;)V
.end method

.method public abstract setViewControllerDelegate(Lcom/chillingo/liboffers/gui/renderer/ViewControllerDelegate;)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract updateBadgeNotification(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateBubbleViewForOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/Offer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
