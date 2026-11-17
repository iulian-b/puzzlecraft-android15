.class public interface abstract Lcom/chillingo/liboffers/http/OfferDownloadController;
.super Ljava/lang/Object;
.source "OfferDownloadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;
    }
.end annotation


# virtual methods
.method public abstract getCurrentOfferConfig()Lcom/chillingo/liboffers/model/OfferConfig;
.end method

.method public abstract startDownload(Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;Lcom/chillingo/liboffers/http/OfferDownloadController$OfferDownloadControllerListener;)V
.end method
