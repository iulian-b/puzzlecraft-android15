.class abstract Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ForEachMoPubIdRunnable"
.end annotation


# instance fields
.field private final mCustomEventClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;",
            ">;"
        }
    .end annotation
.end field

.field private final mThirdPartyId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "thirdPartyId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 507
    invoke-static {p2}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 508
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mCustomEventClass:Ljava/lang/Class;

    .line 509
    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mThirdPartyId:Ljava/lang/String;

    .line 510
    return-void
.end method


# virtual methods
.method protected abstract forEach(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public run()V
    .locals 6

    .prologue
    .line 516
    invoke-static {}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$800(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;)Lcom/fusepowered/m2/mobileads/RewardedVideoData;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mCustomEventClass:Ljava/lang/Class;

    iget-object v5, p0, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mThirdPartyId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/m2/mobileads/RewardedVideoData;->getMoPubIdsForAdNetwork(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 518
    .local v2, "moPubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 519
    .local v1, "moPubId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->forEach(Ljava/lang/String;)V

    goto :goto_0

    .line 521
    .end local v1    # "moPubId":Ljava/lang/String;
    :cond_0
    return-void
.end method
