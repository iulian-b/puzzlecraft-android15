.class public interface abstract Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoListener;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoListener.java"


# virtual methods
.method public abstract onRewardedVideoClosed(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onRewardedVideoCompleted(Ljava/util/Set;Lcom/fusepowered/m2/common/MoPubReward;)V
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fusepowered/m2/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/m2/common/MoPubReward;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fusepowered/m2/mobileads/MoPubErrorCode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onRewardedVideoLoadSuccess(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fusepowered/m2/mobileads/MoPubErrorCode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onRewardedVideoStarted(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
