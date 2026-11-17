.class public interface abstract Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerV1;
.super Ljava/lang/Object;
.source "CurrencyListenerV1.java"

# interfaces
.implements Lcom/fusepowered/nx/monetization/listeners/CurrencyListenerBase;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onRedeem(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/business/reward/Balance;",
            ">;)V"
        }
    .end annotation
.end method
