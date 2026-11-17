.class public interface abstract Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;
.super Ljava/lang/Object;
.source "OfferDownloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/http/OfferDownloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfferDownloadControllerListener"
.end annotation


# virtual methods
.method public abstract OfferDataUpdatedWithConfig(Lcom/chillingo/liboffers/model/OfferConfig;)V
.end method

.method public abstract OfferDownloadControllerFailed(Ljava/lang/String;)V
.end method

.method public abstract OfferDownloaded(Lcom/chillingo/liboffers/model/Offer;)V
.end method
