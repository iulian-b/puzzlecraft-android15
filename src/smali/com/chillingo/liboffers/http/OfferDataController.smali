.class public interface abstract Lcom/chillingo/liboffers/http/OfferDataController;
.super Ljava/lang/Object;
.source "OfferDataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;
    }
.end annotation


# virtual methods
.method public abstract getCurrentOfferData()Lcom/chillingo/liboffers/model/OfferData;
.end method

.method public abstract initWithConfig(Lcom/chillingo/liboffers/http/OfferDataDownloadParams;Landroid/app/Activity;)V
.end method

.method public abstract startDownload(Lcom/chillingo/liboffers/http/OfferDataController$OfferDataControllerListener;)V
.end method
