.class public interface abstract Lcom/chillingo/liboffers/http/ConversionController;
.super Ljava/lang/Object;
.source "ConversionController.java"


# virtual methods
.method public abstract postStartEvent(Lcom/chillingo/liboffers/model/CallbackContainer;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/CallbackContainer",
            "<",
            "Lcom/chillingo/liboffers/model/ConversionResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract postStoreEvent(Lcom/chillingo/liboffers/model/CallbackContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/CallbackContainer",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateConversionServerUrl(Ljava/lang/String;)V
.end method
