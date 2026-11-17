.class final Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$6;
.super Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 441
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fusepowered/m2/mobileads/CustomEventRewardedVideo;>;"
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected forEach(Ljava/lang/String;)V
    .locals 2
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 444
    invoke-static {}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$600(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;)Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping;->getClickTrackerUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$700(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/m2/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 447
    invoke-static {}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;->access$600(Lcom/fusepowered/m2/mobileads/MoPubRewardedVideoManager;)Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping;->clearClickUrl(Ljava/lang/String;)V

    .line 448
    return-void
.end method
