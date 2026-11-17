.class public interface abstract Lcom/chillingo/liboffers/OfferSession;
.super Ljava/lang/Object;
.source "OfferSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/OfferSession$StoreType;,
        Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;,
        Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;,
        Lcom/chillingo/liboffers/OfferSession$OffersCorner;
    }
.end annotation


# virtual methods
.method public abstract activateUIOverActivity(Landroid/app/Activity;Lcom/chillingo/liboffers/OfferSession$OffersCorner;Lcom/chillingo/liboffers/OfferSession$OffersFrameInterval;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract closeSession()V
.end method

.method public abstract deactivateUI()V
.end method

.method public abstract onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method
