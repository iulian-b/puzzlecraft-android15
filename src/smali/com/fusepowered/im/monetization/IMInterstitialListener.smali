.class public interface abstract Lcom/fusepowered/im/monetization/IMInterstitialListener;
.super Ljava/lang/Object;
.source "IMInterstitialListener.java"


# virtual methods
.method public abstract onDismissInterstitialScreen(Lcom/fusepowered/im/monetization/IMInterstitial;)V
.end method

.method public abstract onInterstitialFailed(Lcom/fusepowered/im/monetization/IMInterstitial;Lcom/fusepowered/im/monetization/IMErrorCode;)V
.end method

.method public abstract onInterstitialInteraction(Lcom/fusepowered/im/monetization/IMInterstitial;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/im/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInterstitialLoaded(Lcom/fusepowered/im/monetization/IMInterstitial;)V
.end method

.method public abstract onLeaveApplication(Lcom/fusepowered/im/monetization/IMInterstitial;)V
.end method

.method public abstract onShowInterstitialScreen(Lcom/fusepowered/im/monetization/IMInterstitial;)V
.end method
