.class public interface abstract Lcom/chillingo/liboffers/session/OfferActivationHandler;
.super Ljava/lang/Object;
.source "OfferActivationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
    }
.end annotation


# virtual methods
.method public abstract activateOffer(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V
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

.method public abstract isDialogRequiredForOffer(Lcom/chillingo/liboffers/model/Offer;)Lcom/chillingo/liboffers/session/OfferActivationHandler$DialogType;
.end method

.method public abstract setAnalyticsPoster(Lcom/chillingo/liboffers/telemetry/AnalyticsPoster;)V
.end method
