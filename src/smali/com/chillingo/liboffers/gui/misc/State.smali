.class public interface abstract Lcom/chillingo/liboffers/gui/misc/State;
.super Ljava/lang/Object;
.source "State.java"


# virtual methods
.method public abstract enter()V
.end method

.method public abstract exit()V
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

.method public abstract update(DD)Ljava/lang/String;
.end method
