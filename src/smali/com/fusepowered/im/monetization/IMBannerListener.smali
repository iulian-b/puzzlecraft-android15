.class public interface abstract Lcom/fusepowered/im/monetization/IMBannerListener;
.super Ljava/lang/Object;
.source "IMBannerListener.java"


# virtual methods
.method public abstract onBannerInteraction(Lcom/fusepowered/im/monetization/IMBanner;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/im/monetization/IMBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBannerRequestFailed(Lcom/fusepowered/im/monetization/IMBanner;Lcom/fusepowered/im/monetization/IMErrorCode;)V
.end method

.method public abstract onBannerRequestSucceeded(Lcom/fusepowered/im/monetization/IMBanner;)V
.end method

.method public abstract onDismissBannerScreen(Lcom/fusepowered/im/monetization/IMBanner;)V
.end method

.method public abstract onLeaveApplication(Lcom/fusepowered/im/monetization/IMBanner;)V
.end method

.method public abstract onShowBannerScreen(Lcom/fusepowered/im/monetization/IMBanner;)V
.end method
